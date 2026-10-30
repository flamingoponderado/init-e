import Runner.Evaluator
import InitE.Observations

/-! A whole guest run: the declarations, then `main`, on `CState`. -/
namespace Runner
open Flapjack Flapjack.Pancake.PanLang InitE
open Flapjack.PanSemStateFiniteExact

def cDecls (c : CState) : List (DeclHOL 64) → Option CState
  | [] => some c
  | .name _ _ :: declarations => cDecls c declarations
  | .decl shape name expression :: declarations =>
      match ev (cemptyLocals c) expression with
      | some value =>
          if shapeEqHOL shape (shapeOfHOLExact value) then
            cDecls (csetGlobal name value c) declarations
          else none
      | none => none
  | .function declaration :: declarations =>
      if declaration.params.all
            (fun parameter => isWfShapeExactHOL c.structs parameter.2) &&
          isWfShapeExactHOL c.structs declaration.returnShape then
        let entry : CodeEntry := (declaration.params, declaration.body, declaration.returnShape)
        cDecls { c with code := c.code.insert declaration.name entry } declarations
      else none
  | .exnDecl exceptionName shape :: declarations =>
      if (alookup c.eshapes exceptionName).isNone && isWfShapeExactHOL c.structs shape then
        cDecls { c with eshapes := aset c.eshapes exceptionName shape } declarations
      else none

def guestDecls : List (DeclHOL 64) := Guest.Software.guestAst.map declToHOL

def cinitial (array : Array UInt8) (structs : StructContextExact) : CState :=
  { locals := [], globals := [], structs := structs, code := ∅, eshapes := [], mem := .leaf,
    clock := 0, host := arrayHost array, events := [] }

def mainCall : Prog := .call none (Basis.Pure.MlString.ofString "main") []

/-- The declarations, then `main` with `clock`; `none` if the declarations fail. -/
def crun (input : Guest.InputBlob) (clock : Nat) : Option (Result × CState) :=
  match decsStcnamesHOLExact [] guestDecls with
  | none => none
  | some structs =>
    match cDecls (cinitial (inputArray input) structs) guestDecls with
    | none => none
    | some entry => some (cEval mainCall { entry with clock := clock })

def isWrite (event : HolIoEvent) : Bool := event.name = .sharedMem .mappedWrite

theorem guestOracle_keeps_host (name : FfiName) (host : Guest.HostMemory)
    (configuration bytes : List UInt8) (next : Guest.HostMemory) (out : List UInt8)
    (write : name ≠ .sharedMem .mappedWrite)
    (h : Guest.guestOracle name host configuration bytes = .returned next out) : next = host := by
  unfold Guest.guestOracle at h
  cases name with
  | extCall n =>
    simp only at h
    split at h
    · cases h; rfl
    · cases h
  | sharedMem op =>
    cases op with
    | mappedRead =>
      simp only at h
      split at h
      · cases h; rfl
      · cases h
    | mappedWrite => exact absurd rfl write

/-- Only shared-memory writes change the host. -/
theorem oracle_keeps_host (name : HolFfiName) (host : Guest.HostMemory)
    (configuration bytes : List (BitVec 8)) (write : name ≠ .sharedMem .mappedWrite)
    (next : Guest.HostMemory) (out : List (BitVec 8))
    (h : sourceOracle name host configuration bytes = .ret next out) : next = host := by
  unfold sourceOracle at h
  cases name with
  | extCall n =>
    simp only at h
    split at h
    · cases h
    · split at h
      · cases h
        refine guestOracle_keeps_host _ _ _ _ _ _ ?_ ‹_›
        simp
      · cases h
      · cases h
  | sharedMem op =>
    cases op with
    | mappedRead =>
      simp only at h
      split at h
      · cases h
        refine guestOracle_keeps_host _ _ _ _ _ _ ?_ ‹_›
        simp
      · cases h
      · cases h
    | mappedWrite => exact absurd rfl write

theorem replay_writes (host : Guest.HostMemory) (events : List HolIoEvent) :
    replayOracle sourceOracle host events =
      replayOracle sourceOracle host (events.filter isWrite) := by
  induction events generalizing host with
  | nil => rfl
  | cons event rest ih =>
    unfold replayOracle at ih ⊢
    by_cases w : isWrite event
    · simp only [List.foldl_cons, List.filter_cons, w, if_true]
      exact ih _
    · simp only [List.foldl_cons, List.filter_cons, w, Bool.false_eq_true, if_false]
      split
      · rename_i next out h
        rw [oracle_keeps_host _ _ _ _ (by simpa [isWrite] using w) _ _ h]
        exact ih _
      · exact ih _

/-- Output bytes, read from the host replayed over the events. -/
def outputBytes (array : Array UInt8) (events : List HolIoEvent) (count : Nat) : List UInt8 :=
  let host := replayOracle sourceOracle (arrayHost array) (events.filter isWrite)
  (List.range count).map fun i =>
    (host (BitVec.ofNat 64 outputStart + BitVec.ofNat 64 i)).getD 0

theorem outputBytes_eq (input : Guest.InputBlob) (events : List HolIoEvent) (count i : Nat)
    (inside : i < count) (bound : i < 65536) :
    (outputBytes (inputArray input) events count)[i]? =
      some (outputByte input events ⟨i, bound⟩) := by
  simp [outputBytes, outputByte, observedHost, arrayHost_eq, inside, ← replay_writes]

end Runner
