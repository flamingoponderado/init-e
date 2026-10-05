import InitE.FrontendStages.Declarations.Data152
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify152_eq : InitE.FrontendComputation.simplifyDeclaration original152 = simplified152 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify152_eq
end InitE.FrontendStages.Declarations
