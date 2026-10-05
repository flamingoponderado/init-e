import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify486
import InitE.FrontendStages.Declarations.Agreement470
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original486_eq : original486 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_mulmod := by
  with_unfolding_all rfl
#print axioms original486_eq
end InitE.FrontendStages.Declarations
