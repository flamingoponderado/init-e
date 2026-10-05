import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify323
import InitE.FrontendStages.Declarations.Agreement307
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original323_eq : original323 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_put_to := by
  with_unfolding_all rfl
#print axioms original323_eq
end InitE.FrontendStages.Declarations
