import InitE.FrontendStages.Declarations.Data573
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify573_eq : InitE.FrontendComputation.simplifyDeclaration original573 = simplified573 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify573_eq
end InitE.FrontendStages.Declarations
