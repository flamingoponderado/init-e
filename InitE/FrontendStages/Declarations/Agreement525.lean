import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify525
import InitE.FrontendStages.Declarations.Agreement509
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original525_eq : original525 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_exchange := by
  with_unfolding_all rfl
#print axioms original525_eq
end InitE.FrontendStages.Declarations
