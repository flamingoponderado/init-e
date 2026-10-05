import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify503
import InitE.FrontendStages.Declarations.Agreement487
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original503_eq : original503 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_clz := by
  with_unfolding_all rfl
#print axioms original503_eq
end InitE.FrontendStages.Declarations
