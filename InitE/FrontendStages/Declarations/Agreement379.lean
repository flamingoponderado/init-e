import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify379
import InitE.FrontendStages.Declarations.Agreement363
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original379_eq : original379 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_get_code := by
  with_unfolding_all rfl
#print axioms original379_eq
end InitE.FrontendStages.Declarations
