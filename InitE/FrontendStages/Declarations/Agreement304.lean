import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify304
import InitE.FrontendStages.Declarations.Agreement288
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original304_eq : original304 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_to_item := by
  with_unfolding_all rfl
#print axioms original304_eq
end InitE.FrontendStages.Declarations
