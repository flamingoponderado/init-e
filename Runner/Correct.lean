import Runner.Evaluator

/-! `cEval` agrees with the source evaluator: from `ctx c`, the source
evaluator returns the same result and `ctx` of the final `CState`. -/
namespace Runner
open Flapjack Flapjack.Pancake.PanLang InitE
open Flapjack.PanSemStateFiniteExact

theorem evX (c : CState) (e : ExpHOL 64) :
    @evalHOLExact 64 Guest.HostMemory _ (view c).toExact ordinaryDecidable e = ev c e :=
  ev_eq c e

theorem evsX (c : CState) (es : List (ExpHOL 64)) :
    @evalListHOLExact 64 Guest.HostMemory _ (view c).toExact ordinaryDecidable es = evs c es :=
  evs_eq c es

theorem valid_view (c : CState) (kind : VarKind) (name : MlS) (value : Value) :
    isValidValueHOLExact (view c).toExact kind name value =
      isValidValueHOLExact (eview c) kind name value := rfl

theorem lookupKvar_view (c : CState) (kind : VarKind) (name : MlS) :
    lookupKvarHOLExact kind name (view c).toExact = lookupKvarHOLExact kind name (eview c) := by
  cases kind <;> rfl

theorem view_clock (c : CState) : (view c).clock = c.clock := rfl
theorem stores_view (c : CState) (a : Word) (vs : List (HolWordLab 64)) :
    @panMemStoresHOL 64 _ a vs (view c).memaddrs ordinaryDecidable (view c).memory =
      (cmemStores a vs c.mem).map memoryOf := cmemStores_eq a vs c.mem

theorem store32_view (c : CState) (a : Word) (v : BitVec 32) :
    @panMemStore32HOL 64 _ (view c).memory (view c).memaddrs ordinaryDecidable (view c).be a v =
      (cmemStore32 c.mem a v).map memoryOf := cmemStore32_eq c.mem a v

theorem storeByte_view (c : CState) (a : Word) (v : UInt8) :
    @panMemStoreByteHOL 64 _ (view c).memory (view c).memaddrs ordinaryDecidable (view c).be a v =
      (cmemStoreByte c.mem a v).map memoryOf := cmemStoreByte_eq c.mem a v

theorem load_view (c : CState) :
    @panMemLoadByteWord8HOL 64 _ (view c).memory (view c).memaddrs ordinaryDecidable (view c).be =
      panMemLoadByteWord8HOL (memoryOf c.mem) ordinaryDomain false := rfl

theorem write_view (c : CState) (a : Word) (bytes : List (BitVec 8)) :
    @panWriteBytearrayWord8HOL 64 _ a bytes (view c).memory (view c).memaddrs ordinaryDecidable
      (view c).be = memoryOf (cwriteBytes a bytes c.mem) := cwriteBytes_eq a bytes c.mem

theorem vstructs (c : CState) : (view c).structs = c.structs := rfl
theorem veshapes (c : CState) : (view c).eshapes.lookup = alookup c.eshapes := rfl

theorem ofExact_view (x : PanSemStateExact 64 Guest.HostMemory) (p : x.FiniteSupport)
    (c : CState) (h : x = (view c).toExact) : ofExact x p = view c := by
  subst h
  exact ofExact_toExact (view c)

/-! ### Non-recursive clauses -/

/-- The clauses that `cnonrec` handles, as the source evaluator's exact steps. -/
def exactStep (s : PanSemStateExact 64 Guest.HostMemory) [DecidablePred s.memaddrs]
    [DecidablePred s.shMemaddrs] : Prog → Option (Result × PanSemStateExact 64 Guest.HostMemory)
  | .shMemLoad size kind name address =>
      some (shMemLoadClauseHOLExact s size kind name address (fun _ e => evalHOLExact s e))
  | .shMemStore size address value =>
      some (shMemStoreClauseHOLExact s size address value (fun _ e => evalHOLExact s e))
  | program => evalPanSemNonrecursiveHOLExact program s

theorem cshMemLoad_eq (c : CState) (kind : VarKind) (name : MlS) (address : Word) (nb : Nat) :
    @shMemLoadHOLExact 64 _ _ (view c).toExact sharedDecidable kind name address nb =
      ((cshMemLoad c kind name address nb).1, (view (cshMemLoad c kind name address nb).2).toExact) := by
  unfold shMemLoadHOLExact cshMemLoad
  have e : (view c).shMemaddrs = sharedDomain := rfl
  by_cases z : nb = 0 <;> simp only [z, if_true, if_false, e] <;>
  · split
    · rw [ccallFFI_eq]
      symm
      split
      · rename_i event h
        rw [h]
        rfl
      · rename_i c' bytes h
        have frame := ccallFFI_frame _ _ _ _ _ _ h
        rw [h]
        simp only [CFfiResult.toHol]
        rw [frame, view_csetKvar, toExact_setKvarHOLFinite]
        cases kind <;> rfl
    · rfl

theorem cshMemStore_eq (c : CState) (word address : Word) (nb : Nat) :
    @shMemStoreHOLExact 64 _ _ (view c).toExact sharedDecidable word address nb =
      ((cshMemStore c word address nb).1, (view (cshMemStore c word address nb).2).toExact) := by
  unfold shMemStoreHOLExact cshMemStore
  have e : (view c).shMemaddrs = sharedDomain := rfl
  by_cases z : nb = 0 <;> simp only [z, if_true, if_false, e] <;>
  · split
    · rw [ccallFFI_eq]
      symm
      split
      · rename_i event h
        rw [h]
        rfl
      · rename_i c' bytes h
        have frame := ccallFFI_frame _ _ _ _ _ _ h
        rw [h]
        simp only [CFfiResult.toHol]
        rw [frame]
        rfl
    · rfl

theorem exactStep_eq (c : CState) (p : Prog)
    (notDec : ∀ a b c d, p ≠ .dec a b c d) (notSeq : ∀ a b, p ≠ .seq a b)
    (notIte : ∀ a b c, p ≠ .ite a b c) (notWhile : ∀ a b, p ≠ .while a b)
    (notCall : ∀ a b c, p ≠ .call a b c) (notDecCall : ∀ a b c d e, p ≠ .decCall a b c d e) :
    @exactStep (view c).toExact ordinaryDecidable sharedDecidable p =
      some ((cnonrec c p).1, (view (cnonrec c p).2).toExact) := by
  cases p with
  | dec => exact absurd rfl (notDec _ _ _ _)
  | seq => exact absurd rfl (notSeq _ _)
  | ite => exact absurd rfl (notIte _ _ _)
  | «while» => exact absurd rfl (notWhile _ _)
  | call => exact absurd rfl (notCall _ _ _)
  | decCall => exact absurd rfl (notDecCall _ _ _ _ _)
  | skip | «break» | «continue» | annot => rfl
  | tick =>
    simp only [exactStep, evalPanSemNonrecursiveHOLExact, tickStepHOLExact, cnonrec, view_clock]
    by_cases h : c.clock = 0 <;> simp only [h, if_true, if_false]
    · rw [view_cemptyLocals]; rfl
    · rfl
  | assign kind name source =>
    simp only [exactStep, evalPanSemNonrecursiveHOLExact, assignStepHOLExact, cnonrec, evX,
      valid_view]
    cases h : ev c source with
    | none => rfl
    | some value =>
      try dsimp only
      by_cases v : isValidValueHOLExact (eview c) kind name value = true <;>
        simp only [v, if_true, if_false, Bool.false_eq_true]
      rw [view_csetKvar, toExact_setKvarHOLFinite]
  | primitive name operator arguments =>
    simp only [exactStep, evalPanSemNonrecursiveHOLExact, primitiveStepHOLExact, cnonrec, evsX,
      valid_view]
    cases h : evs c arguments with
    | none => rfl
    | some values =>
      try dsimp only
      cases p : panPrimopHOLExact (width := 64) operator values with
      | none => rfl
      | some value =>
        try dsimp only
        by_cases v : isValidValueHOLExact (eview c) .local name value = true <;>
          simp only [v, if_true, if_false, Bool.false_eq_true]
        rw [view_csetVar, toExact_setVarHOLFinite]
  | store destination source =>
    simp only [exactStep, evalPanSemNonrecursiveHOLExact, storeStepHOLExact, cnonrec, evX]
    rcases h : ev c destination with _ | ⟨⟨address⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    cases h2 : ev c source with
    | none => rfl
    | some value =>
      try dsimp only
      rw [stores_view]
      cases cmemStores address (flattenHOL value) c.mem <;> rfl
  | store32 address value =>
    simp only [exactStep, evalPanSemNonrecursiveHOLExact, store32StepHOLExact, cnonrec, evX]
    rcases h : ev c address with _ | ⟨⟨addr⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rcases h2 : ev c value with _ | ⟨⟨word⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rw [store32_view]
    cases cmemStore32 c.mem addr (BitVec.ofNat 32 word.toNat) <;> rfl
  | storeByte address value =>
    simp only [exactStep, evalPanSemNonrecursiveHOLExact, storeByteStepHOLExact, cnonrec, evX]
    rcases h : ev c address with _ | ⟨⟨addr⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rcases h2 : ev c value with _ | ⟨⟨word⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rw [storeByte_view]
    cases cmemStoreByte c.mem addr (UInt8.ofNat word.toNat) <;> rfl
  | extCall function ptr1 len1 ptr2 len2 =>
    simp only [exactStep, evalPanSemNonrecursiveHOLExact, extCallStepHOLExact, cnonrec, evX]
    rcases h1 : ev c ptr1 with _ | ⟨⟨address1⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rcases h2 : ev c len1 with _ | ⟨⟨length1⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rcases h3 : ev c ptr2 with _ | ⟨⟨address2⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rcases h4 : ev c len2 with _ | ⟨⟨length2⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rw [load_view]
    cases r1 : readBytearrayWordHOL (byteWidth := 8) address1 length1.toNat
        (panMemLoadByteWord8HOL (memoryOf c.mem) ordinaryDomain false) with
    | none => rfl
    | some bytes =>
      try dsimp only
      cases r2 : readBytearrayWordHOL (byteWidth := 8) address2 length2.toNat
          (panMemLoadByteWord8HOL (memoryOf c.mem) ordinaryDomain false) with
      | none => rfl
      | some bytes2 =>
        try dsimp only
        rw [ccallFFI_eq]
        cases f : ccallFFI c (.extCall function) bytes bytes2 with
        | final event =>
          simp only [CFfiResult.toHol]
          rw [view_cemptyLocals]; rfl
        | ret c' out =>
          have frame := ccallFFI_frame _ _ _ _ _ _ f
          simp only [CFfiResult.toHol]
          rw [frame]
          rw [write_view]
          rfl
  | «return» value =>
    simp only [exactStep, evalPanSemNonrecursiveHOLExact, returnStepHOLExact, cnonrec, evX]
    cases h : ev c value with
    | none => rfl
    | some returned =>
      try dsimp only
      simp only [vstructs]
      by_cases s : sizeOfShapeWithContextHOL c.structs (shapeOfHOLExact returned) ≤ 32 <;>
        simp only [s, if_true, if_false]
      rw [view_cemptyLocals]; rfl
  | raise exception value =>
    simp only [exactStep, evalPanSemNonrecursiveHOLExact, raiseStepHOLExact, cnonrec, evX]
    cases h : ev c value with
    | none => rfl
    | some raised =>
      try dsimp only
      simp only [vstructs, veshapes]
      cases e : alookup c.eshapes exception with
      | none => rfl
      | some shape =>
        try dsimp only
        by_cases q : shapeEqHOL (shapeOfHOLExact raised) shape = true <;>
          simp only [q, if_true, if_false, Bool.false_eq_true]
        by_cases s : sizeOfShapeWithContextHOL c.structs (shapeOfHOLExact raised) ≤ 32 <;>
          simp only [s, if_true, if_false]
        rw [view_cemptyLocals]; rfl
  | shMemLoad size kind name address =>
    simp only [exactStep, shMemLoadClauseHOLExact, cnonrec, evX, lookupKvar_view]
    rcases h : ev c address with _ | ⟨⟨addr⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rcases k : lookupKvarHOLExact kind name (eview c) with _ | ⟨⟨w⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    try dsimp only
    rw [cshMemLoad_eq]
  | shMemStore size address value =>
    simp only [exactStep, shMemStoreClauseHOLExact, cnonrec, evX]
    rcases h : ev c address with _ | ⟨⟨addr⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    rcases k : ev c value with _ | ⟨⟨bytes⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    try dsimp only
    rw [cshMemStore_eq]

/-- The clauses the source evaluator sends to its non-recursive dispatcher. -/
def Dispatched : Prog → Prop
  | .assign .. | .primitive .. | .store .. | .store32 .. | .storeByte .. | .extCall .. => True
  | _ => False

theorem nonrec_finite (c : CState) (p : Prog) (d : Dispatched p) :
    @evalPanSemNonrecursiveHOLFinite 64 _ _ (view c) ordinaryDecidable sharedDecidable p =
      some ((cnonrec c p).1, view (cnonrec c p).2) := by
  have e := exactStep_eq c p
    (by intros; cases p <;> simp_all [Dispatched]) (by intros; cases p <;> simp_all [Dispatched])
    (by intros; cases p <;> simp_all [Dispatched]) (by intros; cases p <;> simp_all [Dispatched])
    (by intros; cases p <;> simp_all [Dispatched]) (by intros; cases p <;> simp_all [Dispatched])
  have same : @exactStep (view c).toExact ordinaryDecidable sharedDecidable p =
      @evalPanSemNonrecursiveHOLExact 64 _ _ p (view c).toExact ordinaryDecidable sharedDecidable := by
    cases p <;> simp_all [Dispatched, exactStep]
  rw [same] at e
  unfold evalPanSemNonrecursiveHOLFinite
  split
  · rename_i h
    rw [h] at e
    cases e
  · rename_i pair h
    rw [h] at e
    cases e
    simp only [Option.some.injEq, Prod.mk.injEq, true_and]
    exact ofExact_view _ _ _ rfl

theorem shMemLoad_clause (c : CState) size kind name address :
    @shMemLoadClauseHOLExact 64 _ _ (view c).toExact sharedDecidable size kind name address
        (fun _ e => @evalHOLExact 64 _ _ (view c).toExact ordinaryDecidable e) =
      ((cnonrec c (.shMemLoad size kind name address)).1,
        (view (cnonrec c (.shMemLoad size kind name address)).2).toExact) := by
  have e := exactStep_eq c (.shMemLoad size kind name address)
    (by intros; simp) (by intros; simp) (by intros; simp) (by intros; simp) (by intros; simp)
    (by intros; simp)
  simpa [exactStep] using e

theorem shMemStore_clause (c : CState) size address value :
    @shMemStoreClauseHOLExact 64 _ _ (view c).toExact sharedDecidable size address value
        (fun _ e => @evalHOLExact 64 _ _ (view c).toExact ordinaryDecidable e) =
      ((cnonrec c (.shMemStore size address value)).1,
        (view (cnonrec c (.shMemStore size address value)).2).toExact) := by
  have e := exactStep_eq c (.shMemStore size address value)
    (by intros; simp) (by intros; simp) (by intros; simp) (by intros; simp) (by intros; simp)
    (by intros; simp)
  simpa [exactStep] using e

theorem rec_ctx (p : Prog) (context : RContext) (c : CState) (h : context.state = view c) :
    evalPanSemRecursiveCallFiniteContext p context = evalPanSemRecursiveCallFiniteContext p (ctx c) := by
  rw [ctx_eq h]

theorem withState_ofExact (context : RContext) (x : PanSemStateExact 64 Guest.HostMemory)
    (p : x.FiniteSupport) h1 h2 (c : CState) (hx : x = (view c).toExact) :
    context.withState (ofExact x p) h1 h2 = ctx c :=
  ctx_eq (ofExact_view x p c hx)

theorem vcode (c : CState) : (view c).code = codeMap c.code := rfl

/-- What the clause gives back to the caller, as `ctx`. -/
theorem result_ctx (r : Result) (context : RContext) (c : CState) (h : context.state = view c) :
    some (r, context) = some (r, ctx c) := by
  rw [ctx_eq h]

/-- The constructors `cEval` hands to `cnonrec`. -/
def Nonrec : Prog → Prop
  | .dec .. | .seq .. | .ite .. | .while .. | .call .. | .decCall .. => False
  | _ => True

theorem cEval_nonrec (p : Prog) (c : CState) (n : Nonrec p) : cEval p c = cnonrec c p := by
  rw [cEval.eq_def]
  cases p <;> simp_all [Nonrec]

theorem nonrec_correct (p : Prog) (c : CState) (n : Nonrec p) :
    evalPanSemRecursiveCallFiniteContext p (ctx c) = some ((cEval p c).1, ctx (cEval p c).2) := by
  rw [cEval_nonrec p c n]
  cases p <;> simp only [Nonrec] at n
  all_goals rw [evalPanSemRecursiveCallFiniteContext.eq_def]
  all_goals conv => lhs; dsimp only [ctx]
  case skip | «break» | «continue» | annot => rfl
  case tick =>
    simp only [view_clock, cnonrec]
    by_cases k : c.clock = 0 <;> simp only [k, if_true, if_false]
    · exact result_ctx _ _ _ (view_cemptyLocals c).symm
    · exact result_ctx _ _ _ (view_cdecClock c).symm
  case «return» value =>
    simp only [ev_eq, cnonrec, vstructs]
    cases h : ev c value with
    | none => rfl
    | some returned =>
      dsimp only
      by_cases s : sizeOfShapeWithContextHOL c.structs (shapeOfHOLExact returned) ≤ 32 <;>
        simp only [s, if_true, if_false]
      · exact result_ctx _ _ _ (view_cemptyLocals c).symm
  case raise exception value =>
    simp only [ev_eq, cnonrec, vstructs, veshapes]
    cases h : ev c value with
    | none => rfl
    | some raised =>
      dsimp only
      cases e : alookup c.eshapes exception with
      | none => rfl
      | some shape =>
        dsimp only
        by_cases q : shapeEqHOL (shapeOfHOLExact raised) shape = true <;>
          simp only [q, if_true, if_false, Bool.false_eq_true]
        by_cases s : sizeOfShapeWithContextHOL c.structs (shapeOfHOLExact raised) ≤ 32 <;>
          simp only [s, if_true, if_false]
        exact result_ctx _ _ _ (view_cemptyLocals c).symm
  case shMemLoad size kind name address =>
    simp only [Option.some.injEq, Prod.mk.injEq]
    exact ⟨by rw [shMemLoad_clause],
      withState_ofExact _ _ _ _ _ _ (congrArg Prod.snd (shMemLoad_clause c size kind name address))⟩
  case shMemStore size address value =>
    simp only [Option.some.injEq, Prod.mk.injEq]
    exact ⟨by rw [shMemStore_clause],
      withState_ofExact _ _ _ _ _ _ (congrArg Prod.snd (shMemStore_clause c size address value))⟩
  all_goals
    split
    · rename_i h
      rw [nonrec_finite] at h
      · cases h
      · trivial
    · rename_i pair h
      rw [nonrec_finite] at h
      · cases h
        exact result_ctx _ _ _ rfl
      · trivial

theorem cEval_correct (p : Prog) (c : CState) :
    evalPanSemRecursiveCallFiniteContext p (ctx c) = some ((cEval p c).1, ctx (cEval p c).2) := by
  match p with
  | .dec name shape initializer body =>
    rw [evalPanSemRecursiveCallFiniteContext.eq_def, cEval.eq_def]
    conv => lhs; dsimp only [ctx]
    simp only [ev_eq]
    cases h : ev c initializer with
    | none => rfl
    | some value =>
      dsimp only
      by_cases s : shapeEqHOL shape (shapeOfHOLExact value) = true <;>
        simp only [s, if_true, if_false, Bool.false_eq_true]
      · rw [rec_ctx body _ (csetVar name value c) (view_csetVar name value c).symm,
          cEval_correct body (csetVar name value c)]
        rcases hc : cEval body (csetVar name value c) with ⟨r, post⟩
        dsimp only
        exact result_ctx _ _ _ (by rw [view_cresVar]; rfl)
  | .seq first second =>
    rw [evalPanSemRecursiveCallFiniteContext.eq_def, cEval.eq_def]
    conv => lhs; dsimp only [ctx]
    rw [rec_ctx first _ c rfl, cEval_correct first c]
    rcases hc : cEval first c with ⟨fr, c1⟩
    simp only [hc]
    cases fr with
    | none =>
      rw [rec_ctx second _ (cfixClock c c1) rfl]
      exact cEval_correct second (cfixClock c c1)
    | some _ => exact result_ctx _ _ _ rfl
  | .ite condition thenBranch elseBranch =>
    rw [evalPanSemRecursiveCallFiniteContext.eq_def, cEval.eq_def]
    conv => lhs; dsimp only [ctx]
    simp only [ev_eq]
    rcases h : ev c condition with _ | ⟨⟨v⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    by_cases z : (v != 0) = true <;> simp only [z, if_true, if_false, Bool.false_eq_true]
    · exact cEval_correct thenBranch c
    · exact cEval_correct elseBranch c
  | .while condition body =>
    rw [evalPanSemRecursiveCallFiniteContext.eq_def, cEval.eq_def]
    conv => lhs; dsimp only [ctx]
    simp only [ev_eq, view_clock]
    rcases h : ev c condition with _ | ⟨⟨w⟩⟩ | _ | _ <;> (try dsimp only) <;> try rfl
    by_cases z : w = 0 <;> simp only [z, ne_eq, if_true, if_false, not_false_eq_true,
      not_true_eq_false]
    · by_cases k : c.clock = 0 <;> simp only [k, if_true, if_false]
      · exact result_ctx _ _ _ (view_cemptyLocals c).symm
      · rw [rec_ctx body _ (cdecClock c) (view_cdecClock c).symm,
          cEval_correct body (cdecClock c)]
        rcases hc : cEval body (cdecClock c) with ⟨br, bc⟩
        dsimp only
        rcases br with _ | ⟨_ | _ | _ | _ | _ | _ | _⟩ <;> (try dsimp only)
        all_goals first
          | exact result_ctx _ _ _ rfl
          | (rw [rec_ctx _ _ (cfixClock (cdecClock c) bc) rfl]
             exact cEval_correct (.while condition body) (cfixClock (cdecClock c) bc))
  | .call info function arguments =>
    rw [evalPanSemRecursiveCallFiniteContext.eq_def, cEval.eq_def]
    conv => lhs; dsimp only [ctx]
    simp only [evs_eq, vcode, view_clock, clookupCode_eq]
    cases h : evs c arguments with
    | none => rfl
    | some values =>
      dsimp only
      cases l : clookupCode c.code function values with
      | none => rfl
      | some found =>
        obtain ⟨body, callee, returnShape⟩ := found
        dsimp only [Option.map]
        by_cases k : c.clock = 0 <;> simp only [k, if_true, if_false]
        · exact result_ctx _ _ _ (view_cemptyLocals c).symm
        · rw [rec_ctx body _ (centry c callee) rfl, cEval_correct body (centry c callee)]
          rcases hc : cEval body (centry c callee) with ⟨br, bc⟩
          dsimp only
          simp only [valid_view, veshapes]
          rcases br with _ | ⟨_ | _ | _ | _ | value | ⟨eid, value⟩ | event⟩ <;> (try dsimp only)
          case some.returned =>
            by_cases s : shapeEqHOL (shapeOfHOLExact value) returnShape = true <;>
              simp only [s, if_true, if_false, Bool.false_eq_true]
            · rcases info with _ | ⟨_ | ⟨kind, name⟩, _⟩ <;> (try dsimp only)
              · exact result_ctx _ _ _ (by rw [view_cemptyLocals]; rfl)
              · exact result_ctx _ _ _ rfl
              · by_cases v : isValidValueHOLExact (eview c) kind name value = true <;>
                  simp only [v, if_true, if_false, Bool.false_eq_true]
                · exact result_ctx _ _ _ (by rw [view_csetKvar]; rfl)
                · exact result_ctx _ _ _ rfl
            · exact result_ctx _ _ _ rfl
          case some.exception =>
            rcases info with _ | ⟨_, _ | ⟨handlerId, handlerVar, handlerProgram⟩⟩ <;>
              (try dsimp only)
            · exact result_ctx _ _ _ (by rw [view_cemptyLocals]; rfl)
            · exact result_ctx _ _ _ (by rw [view_cemptyLocals]; rfl)
            · by_cases e : eid = handlerId <;> simp only [e, if_true, if_false]
              · cases a : alookup c.eshapes handlerId with
                | none => exact result_ctx _ _ _ rfl
                | some shape =>
                  dsimp only
                  by_cases q : (shapeEqHOL (shapeOfHOLExact value) shape &&
                      isValidValueHOLExact (eview c) .local handlerVar value) = true <;>
                    simp only [q, if_true, if_false, Bool.false_eq_true]
                  · rw [rec_ctx handlerProgram _ (csetVar handlerVar value
                        { cfixClock (centry c callee) bc with locals := c.locals })
                        (by rw [view_csetVar]; rfl)]
                    exact cEval_correct handlerProgram _
                  · exact result_ctx _ _ _ rfl
              · exact result_ctx _ _ _ (by rw [view_cemptyLocals]; rfl)
          all_goals first
            | exact result_ctx _ _ _ rfl
            | exact result_ctx _ _ _ (by rw [view_cemptyLocals]; rfl)
  | .decCall resultName shape function arguments continuation =>
    rw [evalPanSemRecursiveCallFiniteContext.eq_def, cEval.eq_def]
    conv => lhs; dsimp only [ctx]
    simp only [evs_eq, vcode, view_clock, clookupCode_eq]
    cases h : evs c arguments with
    | none => rfl
    | some values =>
      dsimp only
      cases l : clookupCode c.code function values with
      | none => rfl
      | some found =>
        obtain ⟨body, callee, returnShape⟩ := found
        dsimp only [Option.map]
        by_cases k : c.clock = 0 <;> simp only [k, if_true, if_false]
        · exact result_ctx _ _ _ (view_cemptyLocals c).symm
        · rw [rec_ctx body _ (centry c callee) rfl, cEval_correct body (centry c callee)]
          rcases hc : cEval body (centry c callee) with ⟨br, bc⟩
          dsimp only
          rcases br with _ | ⟨_ | _ | _ | _ | value | ⟨eid, value⟩ | event⟩ <;> (try dsimp only)
          case some.returned =>
            by_cases s : (shapeEqHOL (shapeOfHOLExact value) shape &&
                shapeEqHOL (shapeOfHOLExact value) returnShape) = true <;>
              simp only [s, if_true, if_false, Bool.false_eq_true]
            · rw [rec_ctx continuation _ (csetVar resultName value
                  { cfixClock (centry c callee) bc with locals := c.locals })
                  (by rw [view_csetVar]; rfl),
                cEval_correct continuation _]
              rcases hk : cEval continuation (csetVar resultName value
                  { cfixClock (centry c callee) bc with locals := c.locals }) with ⟨cr, cp⟩
              dsimp only
              exact result_ctx _ _ _ (by rw [view_cresVar]; rfl)
            · exact result_ctx _ _ _ rfl
          all_goals first
            | exact result_ctx _ _ _ rfl
            | exact result_ctx _ _ _ (by rw [view_cemptyLocals]; rfl)
  | .skip | .break | .continue | .annot _ _ | .tick | .return _ | .raise _ _ | .shMemLoad _ _ _ _
  | .shMemStore _ _ _ | .assign _ _ _ | .primitive _ _ _ | .store _ _ | .store32 _ _
  | .storeByte _ _ | .extCall _ _ _ _ _ =>
    exact nonrec_correct _ c (by simp [Nonrec])
termination_by (c.clock, sizeOf p)
decreasing_by
  all_goals simp_wf
  all_goals try simp only [cfixClock, cdecClock, centry, csetVar]
  all_goals first
    | (apply lex_of_le <;> (try split) <;> omega)
    | (apply Prod.Lex.left; first | omega | (apply fix_lt; omega))

end Runner
