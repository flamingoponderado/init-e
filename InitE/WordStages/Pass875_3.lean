import InitE.WordStages.Pass875_2
import InitE.WordStages.Parallel875.Data3
import InitE.WordStages.Parallel875.AgreementsParallel.Chunk014
import InitE.DeadStages875.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass875_3 : WordLangProgHOL (BitVec 64) := Parallel875.pass875_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass875_3_eq : WordAlloc.removeDeadProg pass875_2 = pass875_3 := by
  have input_eq : pass875_2 = InitE.DeadStages875.Parallel.input3667 :=
    (show pass875_2 = Parallel875.word875_2_4833 by with_unfolding_all rfl).trans
      Parallel875.AgreementsParallel.input3667_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages875.Parallel.node3667_eq
  simp only [InitE.DeadStages875.Parallel.value0, InitE.DeadStages875.Parallel.value1,
    InitE.DeadStages875.Parallel.value2] at checked
  rw [checked]
  exact Parallel875.AgreementsParallel.output3667_eq.trans (by rfl)

#print axioms pass875_3_eq
end InitE.WordStages
