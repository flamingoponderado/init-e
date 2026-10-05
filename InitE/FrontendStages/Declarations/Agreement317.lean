import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify317
import InitE.FrontendStages.Declarations.Agreement301
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original317_eq : original317 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_s := by
  with_unfolding_all rfl
#print axioms original317_eq
end InitE.FrontendStages.Declarations
