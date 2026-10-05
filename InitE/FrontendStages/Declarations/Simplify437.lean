import InitE.FrontendStages.Declarations.Data437
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify437_eq : InitE.FrontendComputation.simplifyDeclaration original437 = simplified437 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify437_eq
end InitE.FrontendStages.Declarations
