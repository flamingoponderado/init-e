import InitE.FrontendStages.Declarations.Data31
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify31_eq : InitE.FrontendComputation.simplifyDeclaration original31 = simplified31 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify31_eq
end InitE.FrontendStages.Declarations
