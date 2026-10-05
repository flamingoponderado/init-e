import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify378
import InitE.FrontendStages.Declarations.Agreement362
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original378_eq : original378 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_get_account := by
  with_unfolding_all rfl
#print axioms original378_eq
end InitE.FrontendStages.Declarations
