import InitE.CompactComputation
import InitE.WordStages.Pass647_2
import InitE.WordStages.Parallel647.Data3
import InitE.WordStages.Parallel647.AgreementsParallel.Chunk009
import InitE.DeadStages647.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass647_3 : WordLangProgHOL (BitVec 64) := Parallel647.pass647_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass647_3_eq : WordAlloc.removeDeadProg pass647_2 = pass647_3 := by
  have input_eq : pass647_2 = InitE.DeadStages647.Parallel.input2470 :=
    (show pass647_2 = Parallel647.word647_2_2509 by kernel_rfl).trans
      Parallel647.AgreementsParallel.input2470_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages647.Parallel.node2470_eq
  simp only [InitE.DeadStages647.Parallel.value0, InitE.DeadStages647.Parallel.value1,
    InitE.DeadStages647.Parallel.value2] at checked
  rw [checked]
  exact Parallel647.AgreementsParallel.output2470_eq.trans (by rfl)

#print axioms pass647_3_eq
end InitE.WordStages
