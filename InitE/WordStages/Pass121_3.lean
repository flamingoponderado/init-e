import InitE.WordStages.Pass121_2
import InitE.WordStages.Parallel121.Data3
import InitE.WordStages.Parallel121.AgreementsParallel.Chunk004
import InitE.DeadStages121.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass121_3 : WordLangProgHOL (BitVec 64) := Parallel121.pass121_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass121_3_eq : WordAlloc.removeDeadProg pass121_2 = pass121_3 := by
  have input_eq : pass121_2 = InitE.DeadStages121.Parallel.input1046 :=
    (show pass121_2 = Parallel121.word121_2_1434 by with_unfolding_all rfl).trans
      Parallel121.AgreementsParallel.input1046_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages121.Parallel.node1046_eq
  simp only [InitE.DeadStages121.Parallel.value0, InitE.DeadStages121.Parallel.value1,
    InitE.DeadStages121.Parallel.value2] at checked
  rw [checked]
  exact Parallel121.AgreementsParallel.output1046_eq.trans (by rfl)

#print axioms pass121_3_eq
end InitE.WordStages
