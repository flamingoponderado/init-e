import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify316
import InitE.FrontendStages.Declarations.Agreement300
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original316_eq : original316 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_r := by
  with_unfolding_all rfl
#print axioms original316_eq
end InitE.FrontendStages.Declarations
