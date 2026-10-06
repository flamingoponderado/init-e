import InitE.WordStages.Parallel713.Data2
import InitE.WordStages.Parallel713.Data3
import InitE.DeadStages713.Parallel.Data.Chunk068
import InitE.WordStages.Parallel713.AgreementsParallel.Chunk067

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitE.WordStages.Parallel713.AgreementsParallel
theorem input17408_eq : InitE.DeadStages713.Parallel.input17408 =
    InitE.WordStages.Parallel713.word713_2_17426 := by
  rw [InitE.DeadStages713.Parallel.input17408_def]
  simp only [input17407_eq, input17406_eq]
  with_unfolding_all rfl

theorem output17408_eq : InitE.DeadStages713.Parallel.output17408 =
    InitE.WordStages.Parallel713.word713_3_15608 := by
  rw [InitE.DeadStages713.Parallel.output17408_def]
  simp only [output17407_eq, output17406_eq]
  with_unfolding_all rfl

#print axioms output17408_eq
end InitE.WordStages.Parallel713.AgreementsParallel
