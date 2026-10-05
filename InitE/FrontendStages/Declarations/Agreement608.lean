import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify608
import InitE.FrontendStages.Declarations.Agreement592
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original608_eq : original608 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_delegatecall := by
  with_unfolding_all rfl
#print axioms original608_eq
end InitE.FrontendStages.Declarations
