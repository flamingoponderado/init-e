import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify500
import InitE.FrontendStages.Declarations.Agreement484
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original500_eq : original500 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_shl := by
  with_unfolding_all rfl
#print axioms original500_eq
end InitE.FrontendStages.Declarations
