import Runner.Ops

/-! The runner's evaluator: `evalPanSemRecursiveCallFiniteContext` clause by
clause, on `CState`. Expressions are evaluated by the source evaluator itself,
through `view`. -/
namespace Runner
open Flapjack Flapjack.Pancake.PanLang InitE
open Flapjack.PanSemStateFiniteExact

abbrev Result := Option (PanSemResultExact 64)

def ev (c : CState) (e : ExpHOL 64) : Option Value :=
  @evalHOLExact 64 Guest.HostMemory _ (eview c) ordinaryDecidable e

def evs (c : CState) (es : List (ExpHOL 64)) : Option (List Value) :=
  @evalListHOLExact 64 Guest.HostMemory _ (eview c) ordinaryDecidable es

/-- Expressions never read the FFI state. -/
theorem evalHOLExact_upd_ffi {σ : Type} (s : PanSemStateExact 64 σ) [DecidablePred s.memaddrs]
    (e : ExpHOL 64) :
    ∀ (f : HolFfiState σ), evalHOLExact { s with ffi := f } e = evalHOLExact s e := by
  induction e using evalHOLExact.induct (state := s)
    (motive_2 := fun fs => ∀ f : HolFfiState σ, evalListFieldsHOLExact { s with ffi := f } fs =
      evalListFieldsHOLExact s fs)
    (motive_3 := fun es => ∀ f : HolFfiState σ, evalListHOLExact { s with ffi := f } es =
      evalListHOLExact s es)
  all_goals (try intro c) <;>
    (try simp only [evalHOLExact, evalListHOLExact, evalListFieldsHOLExact]) <;>
    (try rfl) <;> simp_all

theorem evalListHOLExact_upd_ffi {σ : Type} (s : PanSemStateExact 64 σ)
    [DecidablePred s.memaddrs] (es : List (ExpHOL 64)) (f : HolFfiState σ) :
    evalListHOLExact { s with ffi := f } es = evalListHOLExact s es := by
  induction es with
  | nil => rfl
  | cons e rest ih => simp only [evalListHOLExact, evalHOLExact_upd_ffi, ih]

theorem ev_eq (c : CState) (e : ExpHOL 64) :
    @evalHOLFinite 64 Guest.HostMemory _ (view c) ordinaryDecidable e = ev c e := by
  exact @evalHOLExact_upd_ffi _ (eview c) ordinaryDecidable e (view c).ffi

theorem evs_eq (c : CState) (es : List (ExpHOL 64)) :
    @evalListHOLFinite 64 Guest.HostMemory _ (view c) ordinaryDecidable es = evs c es := by
  exact @evalListHOLExact_upd_ffi _ (eview c) ordinaryDecidable es (view c).ffi

def cshMemLoad (c : CState) (kind : VarKind) (name : MlS) (address : Word) (nb : Nat) :
    Result × CState :=
  if (if nb = 0 then sharedDomain address else sharedDomain (panByteAlignHOL address)) then
    match ccallFFI c (.sharedMem .mappedRead) [BitVec.ofNat 8 nb]
        (panWordToBytesHOL address false) with
    | .final event => (some (.finalFfi event), cemptyLocals c)
    | .ret c' bytes => (none, csetKvar kind name (.val (.word (panWordOfBytesHOL false 0 bytes))) c')
  else (some .error, c)

def cshMemStore (c : CState) (word address : Word) (nb : Nat) : Result × CState :=
  if (if nb = 0 then sharedDomain address else sharedDomain (panByteAlignHOL address)) then
    let bytes := if nb = 0 then panWordToBytesHOL word false
      else (panWordToBytesHOL word false).take nb
    match ccallFFI c (.sharedMem .mappedWrite) [BitVec.ofNat 8 nb]
        (bytes ++ panWordToBytesHOL address false) with
    | .final event => (some (.finalFfi event), c)
    | .ret c' _ => (none, c')
  else (some .error, c)

def cnonrec (c : CState) : Prog → Result × CState
  | .assign kind name source =>
      match ev c source with
      | some value =>
          if isValidValueHOLExact (eview c) kind name value then
            (none, csetKvar kind name value c)
          else (some .error, c)
      | none => (some .error, c)
  | .primitive name operator arguments =>
      match evs c arguments with
      | some values =>
          match panPrimopHOLExact (width := 64) operator values with
          | some value =>
              if isValidValueHOLExact (eview c) .local name value then
                (none, csetVar name value c)
              else (some .error, c)
          | none => (some .error, c)
      | none => (some .error, c)
  | .store destination source =>
      match ev c destination with
      | some (.val (.word address)) =>
          match ev c source with
          | some value =>
              match cmemStores address (flattenHOL value) c.mem with
              | some mem => (none, { c with mem := mem })
              | none => (some .error, c)
          | none => (some .error, c)
      | _ => (some .error, c)
  | .store32 address value =>
      match ev c address with
      | some (.val (.word addr)) =>
          match ev c value with
          | some (.val (.word word)) =>
              match cmemStore32 c.mem addr (BitVec.ofNat 32 word.toNat) with
              | some mem => (none, { c with mem := mem })
              | none => (some .error, c)
          | _ => (some .error, c)
      | _ => (some .error, c)
  | .storeByte address value =>
      match ev c address with
      | some (.val (.word addr)) =>
          match ev c value with
          | some (.val (.word word)) =>
              match cmemStoreByte c.mem addr (UInt8.ofNat word.toNat) with
              | some mem => (none, { c with mem := mem })
              | none => (some .error, c)
          | _ => (some .error, c)
      | _ => (some .error, c)
  | .extCall function ptr1 len1 ptr2 len2 =>
      match ev c ptr1, ev c len1, ev c ptr2, ev c len2 with
      | some (.val (.word address1)), some (.val (.word length1)),
        some (.val (.word address2)), some (.val (.word length2)) =>
          match readBytearrayWordHOL (byteWidth := 8) address1 length1.toNat
                  (panMemLoadByteWord8HOL (memoryOf c.mem) ordinaryDomain false),
                readBytearrayWordHOL (byteWidth := 8) address2 length2.toNat
                  (panMemLoadByteWord8HOL (memoryOf c.mem) ordinaryDomain false) with
          | some bytes, some bytes2 =>
              match ccallFFI c (.extCall function) bytes bytes2 with
              | .final event => (some (.finalFfi event), cemptyLocals c)
              | .ret c' newBytes => (none, { c' with mem := cwriteBytes address2 newBytes c.mem })
          | _, _ => (some .error, c)
      | _, _, _, _ => (some .error, c)
  | .shMemLoad size kind name address =>
      match ev c address with
      | some (.val (.word addr)) =>
          match lookupKvarHOLExact kind name (eview c) with
          | some (.val (.word _)) => cshMemLoad c kind name addr (nbOpHOL size)
          | _ => (some .error, c)
      | _ => (some .error, c)
  | .shMemStore size address value =>
      match ev c address with
      | some (.val (.word addr)) =>
          match ev c value with
          | some (.val (.word bytes)) => cshMemStore c bytes addr (nbOpHOL size)
          | _ => (some .error, c)
      | _ => (some .error, c)
  | .tick =>
      if c.clock = 0 then (some .timeOut, cemptyLocals c) else (none, cdecClock c)
  | .return value =>
      match ev c value with
      | none => (some .error, c)
      | some returned =>
          if sizeOfShapeWithContextHOL c.structs (shapeOfHOLExact returned) ≤ 32 then
            (some (.returned returned), cemptyLocals c)
          else (some .error, c)
  | .raise exception value =>
      match ev c value with
      | none => (some .error, c)
      | some raised =>
          match alookup c.eshapes exception with
          | none => (some .error, c)
          | some shape =>
              if shapeEqHOL (shapeOfHOLExact raised) shape then
                if sizeOfShapeWithContextHOL c.structs (shapeOfHOLExact raised) ≤ 32 then
                  (some (.exception exception raised), cemptyLocals c)
                else (some .error, c)
              else (some .error, c)
  | .break => (some .break, c)
  | .continue => (some .continue, c)
  | _ => (none, c)

/-- The state a callee starts in. -/
def centry (c : CState) (callee : List (MlS × Value)) : CState :=
  { c with clock := c.clock - 1, locals := callee }

theorem lex_of_le {a b n m : Nat} (h : a ≤ b) (hs : n < m) :
    Prod.Lex (· < ·) (· < ·) (a, n) (b, m) := by
  rcases Nat.lt_or_eq_of_le h with h | h
  · exact Prod.Lex.left _ _ h
  · subst h; exact Prod.Lex.right _ hs

theorem fix_lt {a b c : Nat} (h : a < c) : (if a < b then a else b) < c := by
  split <;> omega

def cEval (program : Prog) (c : CState) : Result × CState :=
  match program with
  | .dec name shape initializer body =>
      match ev c initializer with
      | none => (some .error, c)
      | some value =>
          if shapeEqHOL shape (shapeOfHOLExact value) then
            let (result, post) := cEval body (csetVar name value c)
            (result, cresVar post name (alookup c.locals name))
          else (some .error, c)
  | .seq first second =>
      let (firstResult, firstState) := cEval first c
      let fixed := cfixClock c firstState
      match firstResult with
      | none => cEval second fixed
      | some _ => (firstResult, fixed)
  | .ite condition thenBranch elseBranch =>
      match ev c condition with
      | some (.val (.word value)) =>
          if value != 0 then cEval thenBranch c else cEval elseBranch c
      | _ => (some .error, c)
  | .while condition body =>
      match ev c condition with
      | some (.val (.word word)) =>
          if word ≠ 0 then
            if c.clock = 0 then (some .timeOut, cemptyLocals c)
            else
              let entry := cdecClock c
              let (bodyResult, bodyState) := cEval body entry
              let fixed := cfixClock entry bodyState
              match bodyResult with
              | some .continue | none => cEval (.while condition body) fixed
              | some .break => (none, fixed)
              | _ => (bodyResult, fixed)
          else (none, c)
      | _ => (some .error, c)
  | .call info function arguments =>
      match evs c arguments with
      | none => (some .error, c)
      | some values =>
          match clookupCode c.code function values with
          | none => (some .error, c)
          | some (body, callee, returnShape) =>
              if c.clock = 0 then (some .timeOut, cemptyLocals c)
              else
                let entry := centry c callee
                let (bodyResult, bodyState) := cEval body entry
                let fixed := cfixClock entry bodyState
                match bodyResult with
                | none => (some .error, fixed)
                | some .break => (some .error, fixed)
                | some .continue => (some .error, fixed)
                | some (.returned value) =>
                    if shapeEqHOL (shapeOfHOLExact value) returnShape then
                      match info with
                      | none => (some (.returned value), cemptyLocals fixed)
                      | some (none, _) => (none, { fixed with locals := c.locals })
                      | some (some (kind, name), _) =>
                          if isValidValueHOLExact (eview c) kind name value then
                            (none, csetKvar kind name value { fixed with locals := c.locals })
                          else (some .error, fixed)
                    else (some .error, fixed)
                | some (.exception exceptionId value) =>
                    match info with
                    | none => (some (.exception exceptionId value), cemptyLocals fixed)
                    | some (_, none) => (some (.exception exceptionId value), cemptyLocals fixed)
                    | some (_, some (handlerId, handlerVar, handlerProgram)) =>
                        if exceptionId = handlerId then
                          match alookup c.eshapes exceptionId with
                          | some shape =>
                              if shapeEqHOL (shapeOfHOLExact value) shape &&
                                  isValidValueHOLExact (eview c) .local handlerVar value then
                                cEval handlerProgram
                                  (csetVar handlerVar value { fixed with locals := c.locals })
                              else (some .error, fixed)
                          | none => (some .error, fixed)
                        else (some (.exception exceptionId value), cemptyLocals fixed)
                | some other => (some other, cemptyLocals fixed)
  | .decCall resultName shape function arguments continuation =>
      match evs c arguments with
      | none => (some .error, c)
      | some values =>
          match clookupCode c.code function values with
          | none => (some .error, c)
          | some (body, callee, returnShape) =>
              if c.clock = 0 then (some .timeOut, cemptyLocals c)
              else
                let entry := centry c callee
                let (bodyResult, bodyState) := cEval body entry
                let fixed := cfixClock entry bodyState
                match bodyResult with
                | none => (some .error, fixed)
                | some .break => (some .error, fixed)
                | some .continue => (some .error, fixed)
                | some (.returned value) =>
                    if shapeEqHOL (shapeOfHOLExact value) shape &&
                        shapeEqHOL (shapeOfHOLExact value) returnShape then
                      let (result, post) := cEval continuation
                        (csetVar resultName value { fixed with locals := c.locals })
                      (result, cresVar post resultName (alookup c.locals resultName))
                    else (some .error, fixed)
                | some other => (some other, cemptyLocals fixed)
  | other => cnonrec c other
termination_by (c.clock, sizeOf program)
decreasing_by
  all_goals simp_wf
  all_goals try simp only [cfixClock, cdecClock, centry, csetVar]
  all_goals first
    | (apply lex_of_le <;> (try split) <;> omega)
    | (apply Prod.Lex.left; first | omega | (apply fix_lt; omega))

end Runner
