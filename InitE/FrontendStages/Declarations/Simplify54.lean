import InitE.FrontendStages.Declarations.Data54
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify54_eq : InitE.FrontendComputation.simplifyDeclaration original54 = simplified54 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify54_eq
end InitE.FrontendStages.Declarations
