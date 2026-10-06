import InitE.CompactComputation
import InitE.WordStages.Pass652_2
import InitE.WordStages.Parallel652.Data3
import InitE.WordStages.Parallel652.AgreementsParallel.Chunk003
import InitE.DeadStages652.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass652_3 : WordLangProgHOL (BitVec 64) := Parallel652.pass652_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass652_3_eq : WordAlloc.removeDeadProg pass652_2 = pass652_3 := by
  have input_eq : pass652_2 = InitE.DeadStages652.Parallel.input976 :=
    (show pass652_2 = Parallel652.word652_2_1690 by kernel_rfl).trans
      Parallel652.AgreementsParallel.input976_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages652.Parallel.node976_eq
  simp only [InitE.DeadStages652.Parallel.value0, InitE.DeadStages652.Parallel.value1,
    InitE.DeadStages652.Parallel.value2] at checked
  rw [checked]
  exact Parallel652.AgreementsParallel.output976_eq.trans (by rfl)

#print axioms pass652_3_eq
end InitE.WordStages
