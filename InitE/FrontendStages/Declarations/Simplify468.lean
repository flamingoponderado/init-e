import InitE.FrontendStages.Declarations.Data468
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify468_eq : InitE.FrontendComputation.simplifyDeclaration original468 = simplified468 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify468_eq
end InitE.FrontendStages.Declarations
