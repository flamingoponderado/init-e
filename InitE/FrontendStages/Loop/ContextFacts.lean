import InitE.FrontendStages.Pass3
import InitE.FrontendStages.Loop.Context
import InitE.LoopComputation

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Loop
open Flapjack

-- Only names and parameter counts are inspected; bodies remain unused.
theorem functionEntries_eq : InitE.LoopComputation.functionEntries pass3 =
    InitE.LoopComputation.functionEntries signatures := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl

theorem functionMap_eq : crepToLoopMakeFuncsExactExecutable pass3 = functionMap :=
  InitE.LoopComputation.makeFuncs_congr _ _ functionEntries_eq

#print axioms functionEntries_eq
#print axioms functionMap_eq
end InitE.FrontendStages.Loop
