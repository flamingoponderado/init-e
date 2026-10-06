import InitE.CompactComputation
import InitE.WordStages.Pass184_2
import InitE.WordStages.Parallel184.Data3
import InitE.WordStages.Parallel184.AgreementsParallel.Chunk009
import InitE.DeadStages184.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass184_3 : WordLangProgHOL (BitVec 64) := Parallel184.pass184_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass184_3_eq : WordAlloc.removeDeadProg pass184_2 = pass184_3 := by
  have input_eq : pass184_2 = InitE.DeadStages184.Parallel.input2332 :=
    (show pass184_2 = Parallel184.word184_2_2264 by kernel_rfl).trans
      Parallel184.AgreementsParallel.input2332_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages184.Parallel.node2332_eq
  simp only [InitE.DeadStages184.Parallel.value0, InitE.DeadStages184.Parallel.value1,
    InitE.DeadStages184.Parallel.value2] at checked
  rw [checked]
  exact Parallel184.AgreementsParallel.output2332_eq.trans (by rfl)

#print axioms pass184_3_eq
end InitE.WordStages
