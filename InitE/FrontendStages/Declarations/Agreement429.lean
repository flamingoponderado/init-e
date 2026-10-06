import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify429
import InitE.FrontendStages.Declarations.Agreement413
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original429_eq : original429 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_remove_storage_write := by
  with_unfolding_all rfl
#print axioms original429_eq
end InitE.FrontendStages.Declarations
