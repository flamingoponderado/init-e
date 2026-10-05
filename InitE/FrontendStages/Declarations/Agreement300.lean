import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify300
import InitE.FrontendStages.Declarations.Agreement284
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original300_eq : original300 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_scalar_u256 := by
  with_unfolding_all rfl
#print axioms original300_eq
end InitE.FrontendStages.Declarations
