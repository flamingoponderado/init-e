import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify376
import InitE.FrontendStages.Declarations.Agreement360
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original376_eq : original376 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_get_pre_state_account := by
  with_unfolding_all rfl
#print axioms original376_eq
end InitE.FrontendStages.Declarations
