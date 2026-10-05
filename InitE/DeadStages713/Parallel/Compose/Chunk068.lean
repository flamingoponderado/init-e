import InitE.DeadStages713.Parallel.Conditional.Chunk068
import InitE.DeadStages713.Parallel.Compose.Chunk067
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.CompilerComputation

namespace InitE.DeadStages713.Parallel
theorem node17408_eq : Flapjack.WordAlloc.removeDeadStructural input17408 value0 value1 value2 = (output17408, value6906, value1) :=
  node17408_cond_eq node17406_eq node17407_eq

#print axioms node17408_eq
end InitE.DeadStages713.Parallel
