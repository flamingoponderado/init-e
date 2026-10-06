import InitE.CompactComputation
import InitE.WordStages.Pass692_2
import InitE.WordStages.Parallel692.Data3
import InitE.WordStages.Parallel692.AgreementsParallel.Chunk008
import InitE.DeadStages692.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass692_3 : WordLangProgHOL (BitVec 64) := Parallel692.pass692_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass692_3_eq : WordAlloc.removeDeadProg pass692_2 = pass692_3 := by
  have input_eq : pass692_2 = InitE.DeadStages692.Parallel.input2228 :=
    (show pass692_2 = Parallel692.word692_2_3510 by kernel_rfl).trans
      Parallel692.AgreementsParallel.input2228_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages692.Parallel.node2228_eq
  simp only [InitE.DeadStages692.Parallel.value0, InitE.DeadStages692.Parallel.value1,
    InitE.DeadStages692.Parallel.value2] at checked
  rw [checked]
  exact Parallel692.AgreementsParallel.output2228_eq.trans (by rfl)

#print axioms pass692_3_eq
end InitE.WordStages
