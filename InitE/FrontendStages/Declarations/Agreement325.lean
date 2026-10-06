import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify325
import InitE.FrontendStages.Declarations.Agreement309
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original325_eq : original325 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_put_access_list := by
  with_unfolding_all rfl
#print axioms original325_eq
end InitE.FrontendStages.Declarations
