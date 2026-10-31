import InitE.SourceSemantics
import Std.Data.HashMap.Lemmas
import Runner.Trie

/-! The runner's concrete state and its view as a source state.

`PanSemStateFiniteExact` keeps maps and memory as functions, so every update
wraps another closure and a long run reads through a long chain of them. It
also appends each FFI event to the end of the event list. `CState` keeps the
same data in persistent structures and the events newest first; `view`
reads it back as the source state, and each operation below is proved to
match its source counterpart through `view`. -/
namespace Runner
open Flapjack Flapjack.Pancake.PanLang InitE

abbrev Word := BitVec 64
abbrev Value := ValueHOL 64
abbrev Prog := ProgHOL 64
abbrev CodeEntry := List (MlS × ShapeHOL) × Prog × ShapeHOL

/-! ### Association lists -/

def bytesEq : List (BitVec 8) → List (BitVec 8) → Bool
  | [], [] => true
  | a :: as, b :: bs => decide (a.toNat = b.toNat) && bytesEq as bs
  | _, _ => false

/-- Name equality, specialised to byte lists. -/
def nameEq (a b : MlS) : Bool := bytesEq a.explode b.explode

theorem bytesEq_eq (a b : List (BitVec 8)) : bytesEq a b = decide (a = b) := by
  induction a generalizing b with
  | nil => cases b <;> simp [bytesEq]
  | cons x xs ih =>
    cases b with
    | nil => simp [bytesEq]
    | cons y ys => simp [bytesEq, ih, BitVec.toNat_eq]

@[simp] theorem nameEq_eq (a b : MlS) : nameEq a b = decide (a = b) := by
  cases a; cases b; simp [nameEq, bytesEq_eq]

def alookup {β : Type} : List (MlS × β) → MlS → Option β
  | [], _ => none
  | (k, v) :: rest, key => if nameEq key k then some v else alookup rest key

/-- Replace the first binding of `key`, or add one at the end. -/
def aset {β : Type} : List (MlS × β) → MlS → β → List (MlS × β)
  | [], key, v => [(key, v)]
  | (k, w) :: rest, key, v =>
      if nameEq key k then (key, v) :: rest else (k, w) :: aset rest key v

def aerase {β : Type} (list : List (MlS × β)) (key : MlS) : List (MlS × β) :=
  list.filter (fun entry => !nameEq entry.1 key)

theorem alookup_aset {β : Type} (list : List (MlS × β)) (key other : MlS) (v : β) :
    alookup (aset list key v) other = if other = key then some v else alookup list other := by
  induction list with
  | nil => simp [aset, alookup]
  | cons entry rest ih =>
    obtain ⟨k, w⟩ := entry
    by_cases h : key = k
    · subst h; by_cases o : other = key <;> simp [aset, alookup, o]
    · simp only [aset, nameEq_eq, h, decide_false, Bool.false_eq_true, if_false, alookup, ih]
      by_cases o : other = k
      · subst o; simp [Ne.symm h]
      · simp [o]

theorem alookup_aerase {β : Type} (list : List (MlS × β)) (key other : MlS) :
    alookup (aerase list key) other = if other = key then none else alookup list other := by
  induction list with
  | nil => simp [aerase, alookup]
  | cons entry rest ih =>
    obtain ⟨k, w⟩ := entry
    simp only [aerase, List.filter_cons, nameEq_eq] at ih ⊢
    by_cases h : k = key
    · subst h
      simp only [decide_true, Bool.not_true, Bool.false_eq_true, if_false, ih]
      by_cases o : other = k <;> simp [alookup, o]
    · simp only [h, decide_false, Bool.not_false, if_true, alookup, nameEq_eq, ih]
      by_cases o : other = k
      · subst o; simp [h]
      · simp [o]

theorem alookup_support {β : Type} (list : List (MlS × β)) (key : MlS)
    (found : alookup list key ≠ none) : key ∈ list.map Prod.fst := by
  induction list with
  | nil => simp [alookup] at found
  | cons entry rest ih =>
    obtain ⟨k, w⟩ := entry
    simp only [alookup, nameEq_eq] at found
    by_cases h : key = k
    · simp [h]
    · simp only [h] at found; simp [ih found]

def amap {β : Type} (list : List (MlS × β)) : HolFiniteMapExact MlS β :=
  ⟨alookup list, ⟨list.map Prod.fst, alookup_support list⟩⟩

/-! ### Code -/

instance : Hashable MlS := ⟨fun s => hash (s.explode.map BitVec.toNat)⟩

abbrev Code := Std.HashMap MlS CodeEntry

def codeMap (code : Code) : HolFiniteMapExact MlS CodeEntry :=
  ⟨fun key => code[key]?, ⟨code.keys, fun key found => by
    rw [Std.HashMap.mem_keys, Std.HashMap.mem_iff_isSome_getElem?]
    cases h : code[key]? <;> simp_all⟩⟩

/-! ### Memory and host -/

def memoryOf (mem : Trie (HolWordLab 64)) (address : Word) : HolWordLab 64 :=
  (mem.get address.toNat).getD (sourceMemory address)

/-- Host memory with the input arena behind an array, in place of
`guestHostMemory`'s list. The array is an argument so that it is built once. -/
def arrayHost (array : Array UInt8) (address : Word) : Option UInt8 :=
  if Guest.inputAddr ≤ address ∧ address < Guest.inputAddr + BitVec.ofNat 64 array.size then
    array[(address - Guest.inputAddr).toNat]?
  else if Guest.outputAddr ≤ address ∧ address < Guest.outputEnd then some 0
  else none

def inputArray (input : Guest.InputBlob) : Array UInt8 := (Guest.hostInputBytes input).toArray

theorem arrayHost_eq (input : Guest.InputBlob) :
    arrayHost (inputArray input) = Guest.guestHostMemory input := by
  funext address
  simp only [arrayHost, inputArray, Guest.guestHostMemory, List.getElem?_toArray, List.size_toArray]

/-! ### Domains -/

theorem ordinaryDomain_iff (a : Word) :
    ordinaryDomain a ↔ 2701131776 ≤ a.toNat ∧ a.toNat < 33806089704 ∧ a.toNat % 8 = 0 := by
  rw [ordinaryDomain, Compiler.Backend.StackRemove.mem_addresses]
  change (∃ i, i < 3888119741 ∧
    a = BitVec.ofNat 64 2701131776 + BitVec.ofNat 64 i * (8 : BitVec 64)) ↔ _
  have address (i : Nat) (bound : i < 3888119741) :
      (BitVec.ofNat 64 2701131776 + BitVec.ofNat 64 i * (8 : BitVec 64)).toNat =
        2701131776 + 8 * i := by
    rw [show (8 : BitVec 64) = BitVec.ofNat 64 8 from rfl,
      ← BitVec.ofNat_mul, ← BitVec.ofNat_add, BitVec.toNat_ofNat,
      Nat.mod_eq_of_lt (by omega)]
    omega
  constructor
  · rintro ⟨i, bound, rfl⟩
    rw [address i bound]
    omega
  · rintro ⟨lower, upper, aligned⟩
    let i := (a.toNat - 2701131776) / 8
    have bound : i < 3888119741 := by dsimp [i]; omega
    refine ⟨i, bound, BitVec.eq_of_toNat_eq ?_⟩
    rw [address i bound]
    dsimp [i]
    omega

instance ordinaryDecidable : DecidablePred ordinaryDomain :=
  fun a => decidable_of_iff _ (ordinaryDomain_iff a).symm

theorem sharedDomain_iff (a : Word) : sharedDomain a ↔
    a.toNat % 8 = 0 ∧ ((inputStart ≤ a.toNat ∧ a.toNat < inputEnd) ∨
      (outputStart ≤ a.toNat ∧ a.toNat < outputEnd)) := by
  have log : holLOG2 (64 / 8) = 3 := by simp [holLOG2_eq_log2]
  simp only [sharedDomain, holByteAligned, log, holAligned_iff]

instance sharedDecidable : DecidablePred sharedDomain :=
  fun a => decidable_of_iff _ (sharedDomain_iff a).symm

/-! ### The state -/

structure CState where
  locals : List (MlS × Value)
  globals : List (MlS × Value)
  structs : StructContextExact
  code : Code
  eshapes : List (MlS × ShapeHOL)
  mem : Trie (HolWordLab 64)
  clock : Nat
  host : Guest.HostMemory
  /-- Newest first. -/
  events : List HolIoEvent

abbrev SState := PanSemStateFiniteExact 64 Guest.HostMemory

def view (c : CState) : SState where
  locals := amap c.locals
  globals := amap c.globals
  structs := c.structs
  code := codeMap c.code
  eshapes := amap c.eshapes
  memory := memoryOf c.mem
  memaddrs := ordinaryDomain
  shMemaddrs := sharedDomain
  clock := c.clock
  be := false
  ffi := { oracle := sourceOracle, ffiState := c.host, ioEvents := c.events.reverse }
  baseAddr := BitVec.ofNat 64 sourceBase
  topAddr := BitVec.ofNat 64 heapEnd

/-- `view c` for the expression evaluator, without the event list, which
expressions never read. -/
def eview (c : CState) : PanSemStateExact 64 Guest.HostMemory where
  locals := alookup c.locals
  globals := alookup c.globals
  structs := c.structs
  code := fun key => c.code[key]?
  eshapes := alookup c.eshapes
  memory := memoryOf c.mem
  memaddrs := ordinaryDomain
  shMemaddrs := sharedDomain
  clock := c.clock
  be := false
  ffi := { oracle := sourceOracle, ffiState := c.host, ioEvents := [] }
  baseAddr := BitVec.ofNat 64 sourceBase
  topAddr := BitVec.ofNat 64 heapEnd

abbrev RContext := PanSemStateFiniteExact.FiniteEvalContext 64 Guest.HostMemory

abbrev ctx (c : CState) : RContext := ⟨view c, ordinaryDecidable, sharedDecidable⟩

theorem ctx_eq {context : RContext} {c : CState} (h : context.state = view c) : context = ctx c :=
  PanSemStateFiniteExact.FiniteEvalContext.ext h

end Runner
