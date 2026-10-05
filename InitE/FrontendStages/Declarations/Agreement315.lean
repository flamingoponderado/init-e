import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify315
import InitE.FrontendStages.Declarations.Agreement299
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original315_eq : original315 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_data := by
  with_unfolding_all rfl
#print axioms original315_eq
end InitE.FrontendStages.Declarations
