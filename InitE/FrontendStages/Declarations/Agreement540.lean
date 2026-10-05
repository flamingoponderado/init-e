import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify540
import InitE.FrontendStages.Declarations.Agreement524
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original540_eq : original540 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_calldatasize := by
  with_unfolding_all rfl
#print axioms original540_eq
end InitE.FrontendStages.Declarations
