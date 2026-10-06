import InitE.CompactComputation
import InitE.WordStages.Pass231_2
import InitE.WordStages.Parallel231.Data3
import InitE.WordStages.Parallel231.AgreementsParallel.Chunk004
import InitE.DeadStages231.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack
namespace InitE.WordStages

def pass231_3 : WordLangProgHOL (BitVec 64) := Parallel231.pass231_3

/-- A closed composition of local kernel-checked checkpoint equations. -/
theorem pass231_3_eq : WordAlloc.removeDeadProg pass231_2 = pass231_3 := by
  have input_eq : pass231_2 = InitE.DeadStages231.Parallel.input1266 :=
    (show pass231_2 = Parallel231.word231_2_2134 by kernel_rfl).trans
      Parallel231.AgreementsParallel.input1266_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages231.Parallel.node1266_eq
  simp only [InitE.DeadStages231.Parallel.value0, InitE.DeadStages231.Parallel.value1,
    InitE.DeadStages231.Parallel.value2] at checked
  rw [checked]
  exact Parallel231.AgreementsParallel.output1266_eq.trans (by rfl)

#print axioms pass231_3_eq
end InitE.WordStages
