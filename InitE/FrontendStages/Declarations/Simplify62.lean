import InitE.FrontendStages.Declarations.Data62
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify62_eq : InitE.FrontendComputation.simplifyDeclaration original62 = simplified62 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify62_eq
end InitE.FrontendStages.Declarations
