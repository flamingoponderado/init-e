import InitE.FrontendStages.Declarations.Data506
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify506_eq : InitE.FrontendComputation.simplifyDeclaration original506 = simplified506 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify506_eq
end InitE.FrontendStages.Declarations
