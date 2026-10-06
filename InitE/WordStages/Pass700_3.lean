import InitE.CompactComputation
import InitE.WordStages.Pass700_2
import InitE.WordStages.Parallel700.Data3
import InitE.WordStages.Parallel700.AgreementsParallel.Chunk005
import InitE.DeadStages700.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass700_3 : WordLangProgHOL (BitVec 64) := Parallel700.pass700_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass700_3_eq : WordAlloc.removeDeadProg pass700_2 = pass700_3 := by
  have input_eq : pass700_2 = InitE.DeadStages700.Parallel.input1320 :=
    (show pass700_2 = Parallel700.word700_2_1912 by kernel_rfl).trans
      Parallel700.AgreementsParallel.input1320_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages700.Parallel.node1320_eq
  simp only [InitE.DeadStages700.Parallel.value0, InitE.DeadStages700.Parallel.value1,
    InitE.DeadStages700.Parallel.value2] at checked
  rw [checked]
  exact Parallel700.AgreementsParallel.output1320_eq.trans (by rfl)

#print axioms pass700_3_eq
end InitE.WordStages
