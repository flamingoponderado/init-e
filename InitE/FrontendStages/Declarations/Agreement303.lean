import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify303
import InitE.FrontendStages.Declarations.Agreement287
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original303_eq : original303 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_fixed_bytes := by
  with_unfolding_all rfl
#print axioms original303_eq
end InitE.FrontendStages.Declarations
