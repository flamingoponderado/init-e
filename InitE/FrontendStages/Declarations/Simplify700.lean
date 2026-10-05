import InitE.FrontendStages.Declarations.Data700
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify700_eq : InitE.FrontendComputation.simplifyDeclaration original700 = simplified700 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify700_eq
end InitE.FrontendStages.Declarations
