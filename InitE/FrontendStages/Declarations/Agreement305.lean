import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify305
import InitE.FrontendStages.Declarations.Agreement289
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original305_eq : original305 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_list_item := by
  with_unfolding_all rfl
#print axioms original305_eq
end InitE.FrontendStages.Declarations
