import InitE.FrontendStages.Declarations.Data864
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify864_eq : InitE.FrontendComputation.simplifyDeclaration original864 = simplified864 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify864_eq
end InitE.FrontendStages.Declarations
