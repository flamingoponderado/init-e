import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify501
import InitE.FrontendStages.Declarations.Agreement485
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original501_eq : original501 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_shr := by
  with_unfolding_all rfl
#print axioms original501_eq
end InitE.FrontendStages.Declarations
