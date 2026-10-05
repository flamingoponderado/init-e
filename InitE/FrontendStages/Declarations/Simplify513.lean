import InitE.FrontendStages.Declarations.Data513
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify513_eq : InitE.FrontendComputation.simplifyDeclaration original513 = simplified513 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify513_eq
end InitE.FrontendStages.Declarations
