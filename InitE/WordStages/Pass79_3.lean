import InitE.WordStages.Pass79_2
import InitE.WordStages.Parallel79.Data3
import InitE.WordStages.Parallel79.AgreementsParallel.Chunk007
import InitE.DeadStages79.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass79_3 : WordLangProgHOL (BitVec 64) := Parallel79.pass79_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass79_3_eq : WordAlloc.removeDeadProg pass79_2 = pass79_3 := by
  have input_eq : pass79_2 = InitE.DeadStages79.Parallel.input1990 :=
    (show pass79_2 = Parallel79.word79_2_1694 by with_unfolding_all rfl).trans
      Parallel79.AgreementsParallel.input1990_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages79.Parallel.node1990_eq
  simp only [InitE.DeadStages79.Parallel.value0, InitE.DeadStages79.Parallel.value1,
    InitE.DeadStages79.Parallel.value2] at checked
  rw [checked]
  exact Parallel79.AgreementsParallel.output1990_eq.trans (by rfl)

#print axioms pass79_3_eq
end InitE.WordStages
