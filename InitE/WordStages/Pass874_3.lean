import InitE.WordStages.Pass874_2
import InitE.WordStages.Parallel874.Data3
import InitE.WordStages.Parallel874.AgreementsParallel.Chunk007
import InitE.DeadStages874.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass874_3 : WordLangProgHOL (BitVec 64) := Parallel874.pass874_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass874_3_eq : WordAlloc.removeDeadProg pass874_2 = pass874_3 := by
  have input_eq : pass874_2 = InitE.DeadStages874.Parallel.input1971 :=
    (show pass874_2 = Parallel874.word874_2_2304 by with_unfolding_all rfl).trans
      Parallel874.AgreementsParallel.input1971_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages874.Parallel.node1971_eq
  simp only [InitE.DeadStages874.Parallel.value0, InitE.DeadStages874.Parallel.value1,
    InitE.DeadStages874.Parallel.value2] at checked
  rw [checked]
  exact Parallel874.AgreementsParallel.output1971_eq.trans (by rfl)

#print axioms pass874_3_eq
end InitE.WordStages
