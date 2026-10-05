import InitE.FrontendStages.Declarations.Data654
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify654_eq : InitE.FrontendComputation.simplifyDeclaration original654 = simplified654 := by
  conv => lhs; cbv
  conv => rhs; cbv
  try rfl
#print axioms simplify654_eq
end InitE.FrontendStages.Declarations
