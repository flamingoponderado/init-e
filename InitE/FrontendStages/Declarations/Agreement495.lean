import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify495
import InitE.FrontendStages.Declarations.Agreement479
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original495_eq : original495 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_and := by
  with_unfolding_all rfl
#print axioms original495_eq
end InitE.FrontendStages.Declarations
