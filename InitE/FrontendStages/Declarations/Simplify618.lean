import InitE.FrontendStages.Declarations.Data618
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify618_eq : InitE.FrontendComputation.simplifyDeclaration original618 = simplified618 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify618_eq
end InitE.FrontendStages.Declarations
