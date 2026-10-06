import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify530
import InitE.FrontendStages.Declarations.Agreement514
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original530_eq : original530 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_sload := by
  with_unfolding_all rfl
#print axioms original530_eq
end InitE.FrontendStages.Declarations
