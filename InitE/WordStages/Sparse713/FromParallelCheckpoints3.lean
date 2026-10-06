import InitE.CompactComputation
import InitE.WordStages.Pass713_2
import InitE.WordStages.Sparse713.Data3
import InitE.WordStages.Parallel713.AgreementsParallel.Chunk068
import InitE.DeadStages713.Parallel

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

open Flapjack
namespace InitE.WordStages.Sparse713

/-- Join the checked dead-code computation using small node equations rather
than unfolding every sealed checkpoint in one large simplifier proof. -/
theorem fromParallelCheckpoints3_eq :
    WordAlloc.removeDeadProg InitE.WordStages.pass713_2 = pass713_3 := by
  have input_eq : InitE.WordStages.pass713_2 = InitE.DeadStages713.Parallel.input17408 :=
    (show InitE.WordStages.pass713_2 =
      InitE.WordStages.Parallel713.word713_2_17426 by kernel_rfl).trans
        InitE.WordStages.Parallel713.AgreementsParallel.input17408_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages713.Parallel.node17408_eq
  simp only [InitE.DeadStages713.Parallel.value0, InitE.DeadStages713.Parallel.value1,
    InitE.DeadStages713.Parallel.value2] at checked
  rw [checked]
  exact InitE.WordStages.Parallel713.AgreementsParallel.output17408_eq.trans
    (by kernel_rfl)

#print axioms fromParallelCheckpoints3_eq
end InitE.WordStages.Sparse713
