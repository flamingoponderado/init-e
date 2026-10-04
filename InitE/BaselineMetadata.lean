import InitE.BaselineArtifact
import InitE.BootstrapMemory
import InitE.MachineInitialization
import InitE.ArtifactFacts

namespace InitE
open Flapjack Flapjack.RiscV.L3
open Flapjack.Compiler.Encoders.Asm
open Flapjack.Compiler.Encoders.RiscV.Target
open Flapjack.Compiler.Backend.LabToTarget
open Flapjack.Misc

opaque baselineNames : List HolFfiName := baselineConfig.labConf.ffiNames.getD []
opaque baselineMmio : List ShmemInfoNum := baselineConfig.labConf.shmemExtra

def dispatchAddress (i : Nat) : BitVec 64 :=
  BitVec.ofNat 64 nativePc - BitVec.ofNat 64 ((1+i)*ffiOffset)

def baselineEntryPcs : List (BitVec 64) :=
  ((List.range 20).map fun i => BitVec.ofNat 64 nativePc - BitVec.ofNat 64 ((3+i)*ffiOffset)) ++
    (baselineMmio.map fun rec => BitVec.ofNat 64 nativePc + BitVec.ofNat 64 rec.entryPc)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
theorem baseline_finite_facts :
    ffiNameBoundaryValid baselineNames 20 ∧
    (∀ i : Fin baselineNames.length, 20 ≤ i.val →
      mmioRecordValid (BitVec.ofNat 64 nativePc) 20 baselineMmio i.val = true) ∧
    (∀ i : Fin 20, findIndex
      (BitVec.ofNat 64 nativePc - BitVec.ofNat 64 ((3+i.val)*ffiOffset))
      baselineEntryPcs 0 = some i.val) ∧
    (∀ i : Fin baselineEntryPcs.length, 20 ≤ i.val →
      dispatchAddress 0 ≠ baselineEntryPcs[i] ∧ dispatchAddress 1 ≠ baselineEntryPcs[i]) ∧
    baselineNames.length = baselineEntryPcs.length := by
  native_decide

end InitE
