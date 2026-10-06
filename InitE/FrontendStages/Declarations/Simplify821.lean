import InitE.FrontendStages.Declarations.Data821
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify821_eq : InitE.FrontendComputation.simplifyDeclaration original821 = simplified821 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify821_eq
end InitE.FrontendStages.Declarations
