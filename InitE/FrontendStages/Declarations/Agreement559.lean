import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify559
import InitE.FrontendStages.Declarations.Agreement543
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original559_eq : original559 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_timestamp := by
  with_unfolding_all rfl
#print axioms original559_eq
end InitE.FrontendStages.Declarations
