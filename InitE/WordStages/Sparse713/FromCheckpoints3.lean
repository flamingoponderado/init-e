import InitE.WordStages.Pass713_2
import InitE.WordStages.Sparse713.Data3
import InitE.WordStages.Parallel713.Agreements.Chunk068

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

open Flapjack
namespace InitE.WordStages.Sparse713

/-- Join the checked dead-code computation using small node equations rather
than unfolding every sealed checkpoint in one large simplifier proof. -/
theorem fromCheckpoints3_eq :
    WordAlloc.removeDeadProg InitE.WordStages.pass713_2 = pass713_3 := by
  have input_eq : InitE.WordStages.pass713_2 = InitE.DeadStages713.input17408 :=
    (show InitE.WordStages.pass713_2 =
      InitE.WordStages.Parallel713.word713_2_17426 by with_unfolding_all rfl).trans
        InitE.WordStages.Parallel713.Agreements.input17408_eq.symm
  unfold WordAlloc.removeDeadProg
  rw [WordAlloc.removeDeadStructural_eq, input_eq]
  have checked := InitE.DeadStages713.node17408_eq
  simp only [InitE.DeadStages713.value0, InitE.DeadStages713.value1,
    InitE.DeadStages713.value2] at checked
  rw [checked]
  exact InitE.WordStages.Parallel713.Agreements.output17408_eq.trans
    (by with_unfolding_all rfl)

#print axioms fromCheckpoints3_eq
end InitE.WordStages.Sparse713
