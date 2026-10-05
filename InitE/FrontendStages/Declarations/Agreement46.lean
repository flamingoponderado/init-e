import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify46
import InitE.FrontendStages.Declarations.Agreement30
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original46_eq : original46 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_eq := by
  with_unfolding_all rfl
#print axioms original46_eq
end InitE.FrontendStages.Declarations
