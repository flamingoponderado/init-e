import InitE.WordStages.Pass656_2
import InitE.WordStages.Parallel656.Data3
import InitE.WordStages.Parallel656.AgreementsParallel.Chunk005
import InitE.DeadStages656.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass656_3 : WordLangProgHOL (BitVec 64) := Parallel656.pass656_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass656_3_eq : WordAlloc.removeDeadProg pass656_2 = pass656_3 := by
  have input_eq : pass656_2 = InitE.DeadStages656.Parallel.input1290 :=
    (show pass656_2 = Parallel656.word656_2_1827 by with_unfolding_all rfl).trans
      Parallel656.AgreementsParallel.input1290_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages656.Parallel.node1290_eq
  simp only [InitE.DeadStages656.Parallel.value0, InitE.DeadStages656.Parallel.value1,
    InitE.DeadStages656.Parallel.value2] at checked
  rw [checked]
  exact Parallel656.AgreementsParallel.output1290_eq.trans (by rfl)

#print axioms pass656_3_eq
end InitE.WordStages
