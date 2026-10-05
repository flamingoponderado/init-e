import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify532
import InitE.FrontendStages.Declarations.Agreement516
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original532_eq : original532 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_tload := by
  with_unfolding_all rfl
#print axioms original532_eq
end InitE.FrontendStages.Declarations
