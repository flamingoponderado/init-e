import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify520
import InitE.FrontendStages.Declarations.Agreement504
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original520_eq : original520 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_swap := by
  with_unfolding_all rfl
#print axioms original520_eq
end InitE.FrontendStages.Declarations
