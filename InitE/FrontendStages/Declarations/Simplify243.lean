import InitE.FrontendStages.Declarations.Data243
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify243_eq : InitE.FrontendComputation.simplifyDeclaration original243 = simplified243 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify243_eq
end InitE.FrontendStages.Declarations
