import Runner.State

/-! State operations of the runner, each proved to agree with its source
counterpart through `view`. -/
namespace Runner
open Flapjack Flapjack.Pancake.PanLang InitE
open Flapjack.PanSemStateFiniteExact

theorem amap_aset {β : Type} (list : List (MlS × β)) (key : MlS) (v : β) :
    amap (aset list key v) = (amap list).update (key, v) := by
  apply HolFiniteMapExact.ext
  funext other
  simp only [amap, HolFiniteMapExact.update, FUPDATE, alookup_aset, beq_iff_eq]
  by_cases h : other = key
  · simp [h]
  · simp [h, Ne.symm h]

/-! ### Locals and globals -/

def csetVar (name : MlS) (value : Value) (c : CState) : CState :=
  { c with locals := aset c.locals name value }

def csetGlobal (name : MlS) (value : Value) (c : CState) : CState :=
  { c with globals := aset c.globals name value }

def csetKvar (kind : VarKind) (name : MlS) (value : Value) (c : CState) : CState :=
  match kind with
  | .local => csetVar name value c
  | .global => csetGlobal name value c

def cemptyLocals (c : CState) : CState := { c with locals := [] }

def cresVar (c : CState) (name : MlS) : Option Value → CState
  | none => { c with locals := aerase c.locals name }
  | some value => { c with locals := aset c.locals name value }

theorem view_csetVar (name : MlS) (value : Value) (c : CState) :
    view (csetVar name value c) = setVarHOLFinite name value (view c) := by
  simp only [view, csetVar, setVarHOLFinite, amap_aset]

theorem view_csetGlobal (name : MlS) (value : Value) (c : CState) :
    view (csetGlobal name value c) = setGlobalHOLFinite name value (view c) := by
  simp only [view, csetGlobal, setGlobalHOLFinite, amap_aset]

theorem view_csetKvar (kind : VarKind) (name : MlS) (value : Value) (c : CState) :
    view (csetKvar kind name value c) = setKvarHOLFinite kind name value (view c) := by
  cases kind
  · exact view_csetVar name value c
  · exact view_csetGlobal name value c

theorem view_cemptyLocals (c : CState) : view (cemptyLocals c) = emptyLocalsHOLFinite (view c) := by
  simp only [view, cemptyLocals, emptyLocalsHOLFinite]
  congr 1

theorem view_cresVar (c : CState) (name : MlS) (old : Option Value) :
    view (cresVar c name old) =
      { view c with locals := HolFiniteMapExact.resVarEq (view c).locals (name, old) } := by
  cases old <;> simp only [view, cresVar] <;> congr 1 <;> apply HolFiniteMapExact.ext <;>
    funext key <;>
    simp [amap, HolFiniteMapExact.resVarEq, HolFiniteMapExact.eraseEq,
      HolFiniteMapExact.updateEq, FDOMSUB_HOL, FUPDATE_HOL, alookup_aerase, alookup_aset]

theorem view_locals (c : CState) (locals : List (MlS × Value)) :
    view { c with locals := locals } = { view c with locals := amap locals } := rfl

/-! ### Clock -/

def cdecClock (c : CState) : CState := { c with clock := c.clock - 1 }

/-- `fix_clock`: never let a sub-evaluation return more clock than it had. -/
def cfixClock (old : CState) (c : CState) : CState :=
  { c with clock := if old.clock < c.clock then old.clock else c.clock }

theorem view_cdecClock (c : CState) : view (cdecClock c) = decClockHOLFinite (view c) := rfl

theorem view_cfixClock {β : Type} (old c : CState) (r : β) :
    (fixClockHOLFinite (view old) (r, view c)) = (r, view (cfixClock old c)) := rfl

/-! ### Code lookup -/

def calleeLocals (parameters : List MlS) (arguments : List Value) : List (MlS × Value) :=
  (parameters.zip arguments).foldl (fun map entry => aset map entry.1 entry.2) []

theorem alookup_foldl (entries : List (MlS × Value)) (start : List (MlS × Value))
    (f : MlS → Option Value) (agree : alookup start = f) :
    alookup (entries.foldl (fun map entry => aset map entry.1 entry.2) start) =
      entries.foldl (fun (map : MlS → Option Value) (entry : MlS × Value) =>
        fun current => if current = entry.1 then some entry.2 else map current) f := by
  induction entries generalizing start f with
  | nil => exact agree
  | cons entry rest ih =>
    apply ih
    funext key
    rw [alookup_aset, agree]

def clookupCode (code : Code) (name : MlS) (arguments : List Value) :
    Option (Prog × List (MlS × Value) × ShapeHOL) :=
  match code[name]? with
  | none => none
  | some (parameters, body, returnShape) =>
      if (parameters.map Prod.fst).Nodup ∧ parameters.length = arguments.length ∧
          ((parameters.zip arguments).all
            (fun pair => shapeEqHOL pair.1.2 (shapeOfHOLExact pair.2))) = true then
        some (body, calleeLocals (parameters.map Prod.fst) arguments, returnShape)
      else none

theorem clookupCode_eq (code : Code) (name : MlS) (arguments : List Value) :
    lookupCodeCanonicalHOL (codeMap code) name arguments =
      (clookupCode code name arguments).map
        (fun found => (found.1, amap found.2.1, found.2.2)) := by
  unfold lookupCodeCanonicalHOL lookupCodeHOLFinite
  split
  next h =>
    unfold lookupCodeHOLExact at h
    unfold clookupCode
    simp only [codeMap] at h ⊢
    split at h
    · simp_all
    · split at h
      · cases h
      · simp_all
  next body callee returnShape h =>
    unfold lookupCodeHOLExact at h
    unfold clookupCode
    simp only [codeMap] at h ⊢
    split at h
    · cases h
    · rename_i parameters body' returnShape' found
      rw [found]
      split at h
      · rename_i ok
        simp only [Option.some.injEq, Prod.mk.injEq] at h
        obtain ⟨rfl, rfl, rfl⟩ := h
        simp only [ok]
        congr
        exact (alookup_foldl _ [] (fun _ => none) (by funext k; rfl)).symm
      · cases h

/-! ### Memory -/

theorem memoryOf_set (t : Trie (HolWordLab 64)) (address : Word) (value : HolWordLab 64) :
    memoryOf (t.set address.toNat value) =
      fun current => if current = address then value else memoryOf t current := by
  funext current
  simp only [memoryOf, Trie.get_set, BitVec.toNat_eq]
  split <;> rfl

def cmemStore (address : Word) (value : HolWordLab 64) (t : Trie (HolWordLab 64)) :
    Option (Trie (HolWordLab 64)) :=
  if ordinaryDomain address then some (t.set address.toNat value) else none

theorem cmemStore_eq (address : Word) (value : HolWordLab 64) (t : Trie (HolWordLab 64)) :
    panMemStoreHOL address value ordinaryDomain (memoryOf t) =
      (cmemStore address value t).map memoryOf := by
  unfold panMemStoreHOL cmemStore
  split <;> simp [memoryOf_set]

def cmemStores : Word → List (HolWordLab 64) → Trie (HolWordLab 64) →
    Option (Trie (HolWordLab 64))
  | _, [], t => some t
  | address, value :: rest, t =>
      match cmemStore address value t with
      | some t => cmemStores (address + panBytesInWord 64) rest t
      | none => none

theorem cmemStores_eq (address : Word) (values : List (HolWordLab 64))
    (t : Trie (HolWordLab 64)) :
    panMemStoresHOL address values ordinaryDomain (memoryOf t) =
      (cmemStores address values t).map memoryOf := by
  induction values generalizing address t with
  | nil => rfl
  | cons value rest ih =>
    simp only [panMemStoresHOL, cmemStores, cmemStore_eq]
    cases cmemStore address value t <;> simp [ih]

def cmemStoreByte (t : Trie (HolWordLab 64)) (address : Word) (byte : UInt8) :
    Option (Trie (HolWordLab 64)) :=
  let aligned := panByteAlignHOL (width := 64) address
  match memoryOf t aligned with
  | .word cell =>
      if ordinaryDomain aligned then
        some (t.set aligned.toNat
          (.word (panSetByteHOL address (BitVec.ofNat 64 byte.toNat) cell false)))
      else none

theorem cmemStoreByte_eq (t : Trie (HolWordLab 64)) (address : Word) (byte : UInt8) :
    panMemStoreByteHOL (memoryOf t) ordinaryDomain false address byte =
      (cmemStoreByte t address byte).map memoryOf := by
  unfold panMemStoreByteHOL cmemStoreByte
  dsimp only
  split <;> simp [memoryOf_set]

def cmemStoreByte8 (t : Trie (HolWordLab 64)) (address : Word) (byte : BitVec 8) :
    Option (Trie (HolWordLab 64)) :=
  let aligned := panByteAlignHOL (width := 64) address
  match memoryOf t aligned with
  | .word cell =>
      if ordinaryDomain aligned then
        some (t.set aligned.toNat
          (.word (panSetByteHOL address (BitVec.ofNat 64 byte.toNat) cell false)))
      else none

theorem cmemStoreByte8_eq (t : Trie (HolWordLab 64)) (address : Word) (byte : BitVec 8) :
    panMemStoreByteWord8HOL (memoryOf t) ordinaryDomain false address byte =
      (cmemStoreByte8 t address byte).map memoryOf := by
  unfold panMemStoreByteWord8HOL cmemStoreByte8
  dsimp only
  split <;> simp [memoryOf_set]

def cmemStore32 (t : Trie (HolWordLab 64)) (address : Word) (value : BitVec 32) :
    Option (Trie (HolWordLab 64)) :=
  if address.toNat % 4 = 0 then
    let aligned := panByteAlignHOL (width := 64) address
    match memoryOf t aligned with
    | .word cell =>
        if ordinaryDomain aligned then
          let getByte := fun (index : Nat) =>
            panGetByteHOL (width := 32) (BitVec.ofNat 32 index) value false
          let setByte := fun (index : Nat) (byte : UInt8) (current : Word) =>
            panSetByteHOL (address + BitVec.ofNat 64 index)
              (BitVec.ofNat 64 byte.toNat) current false
          let cell0 := setByte 0 (getByte 0) cell
          let cell1 := setByte 1 (getByte 1) cell0
          let cell2 := setByte 2 (getByte 2) cell1
          let cell3 := setByte 3 (getByte 3) cell2
          some (t.set aligned.toNat (.word cell3))
        else none
  else none

theorem cmemStore32_eq (t : Trie (HolWordLab 64)) (address : Word) (value : BitVec 32) :
    panMemStore32HOL (memoryOf t) ordinaryDomain false address value =
      (cmemStore32 t address value).map memoryOf := by
  unfold panMemStore32HOL cmemStore32
  dsimp only
  split
  · split <;> simp [memoryOf_set]
  · rfl

/-- `write_bytearray`: the tail first, then the head; a failed store keeps the
memory it was given. -/
def cwriteBytes (address : Word) (bytes : List (BitVec 8)) (t : Trie (HolWordLab 64)) :
    Trie (HolWordLab 64) :=
  match bytes with
  | [] => t
  | byte :: rest =>
      match cmemStoreByte8 (cwriteBytes (address + 1) rest t) address byte with
      | some updated => updated
      | none => t

theorem cwriteBytes_eq (address : Word) (bytes : List (BitVec 8)) (t : Trie (HolWordLab 64)) :
    panWriteBytearrayWord8HOL address bytes (memoryOf t) ordinaryDomain false =
      memoryOf (cwriteBytes address bytes t) := by
  induction bytes generalizing address with
  | nil => rfl
  | cons byte rest ih =>
    simp only [panWriteBytearrayWord8HOL, cwriteBytes, ih, cmemStoreByte8_eq]
    cases cmemStoreByte8 (cwriteBytes (address + 1) rest t) address byte <;> rfl

/-! ### FFI -/

inductive CFfiResult where
  | ret (c : CState) (bytes : List (BitVec 8))
  | final (event : HolFinalEvent)

/-- `call_FFI` with the new event consed onto the newest-first list. -/
def ccallFFI (c : CState) (name : HolFfiName) (configuration bytes : List (BitVec 8)) :
    CFfiResult :=
  if name = .extCall (Flapjack.Basis.Pure.MlString.MlString.implode []) then
    .ret c bytes
  else
    match sourceOracle name c.host configuration bytes with
    | .ret nextState nextBytes =>
        if nextBytes.length = bytes.length then
          let event : HolIoEvent :=
            { name := name, configuration := configuration, bytes := bytes.zip nextBytes }
          .ret { c with host := nextState, events := event :: c.events } nextBytes
        else
          .final
            { name := name, configuration := configuration, bytes := bytes, outcome := .failed }
    | .final outcome =>
        .final
          { name := name, configuration := configuration, bytes := bytes, outcome := outcome }

def CFfiResult.toHol : CFfiResult → HolFfiResult Guest.HostMemory
  | .ret c bytes => .ret (view c).ffi bytes
  | .final event => .final event

theorem ccallFFI_eq (c : CState) (name : HolFfiName) (configuration bytes : List (BitVec 8)) :
    callFFIHOL (view c).ffi name configuration bytes =
      (ccallFFI c name configuration bytes).toHol := by
  unfold callFFIHOL ccallFFI
  split
  · rfl
  · simp only [view]
    cases h : sourceOracle name c.host configuration bytes with
    | ret next out =>
      by_cases l : out.length = bytes.length <;> simp [l, CFfiResult.toHol, view]
    | final outcome => rfl

/-- FFI calls change only the host state and the events. -/
theorem ccallFFI_frame (c : CState) (name : HolFfiName) (configuration bytes : List (BitVec 8))
    (c' : CState) (out : List (BitVec 8))
    (h : ccallFFI c name configuration bytes = .ret c' out) :
    c' = { c with host := c'.host, events := c'.events } := by
  unfold ccallFFI at h
  split at h
  · cases h; rfl
  · cases o : sourceOracle name c.host configuration bytes with
    | ret next result =>
      simp only [o] at h
      split at h
      · cases h; rfl
      · cases h
    | final outcome => simp [o] at h

end Runner
