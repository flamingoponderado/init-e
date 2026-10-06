import InitE.CompactComputation
import InitE.WordStages.Pass808_2
import InitE.WordStages.Parallel808.Data3
import InitE.WordStages.Parallel808.AgreementsParallel.Chunk005
import InitE.DeadStages808.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass808_3 : WordLangProgHOL (BitVec 64) := Parallel808.pass808_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass808_3_eq : WordAlloc.removeDeadProg pass808_2 = pass808_3 := by
  have input_eq : pass808_2 = InitE.DeadStages808.Parallel.input1454 :=
    (show pass808_2 = Parallel808.word808_2_2507 by kernel_rfl).trans
      Parallel808.AgreementsParallel.input1454_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages808.Parallel.node1454_eq
  simp only [InitE.DeadStages808.Parallel.value0, InitE.DeadStages808.Parallel.value1,
    InitE.DeadStages808.Parallel.value2] at checked
  rw [checked]
  exact Parallel808.AgreementsParallel.output1454_eq.trans (by rfl)

#print axioms pass808_3_eq
end InitE.WordStages
