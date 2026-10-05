import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify385
import InitE.FrontendStages.Declarations.Agreement369
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original385_eq : original385 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_account_has_storage := by
  with_unfolding_all rfl
#print axioms original385_eq
end InitE.FrontendStages.Declarations
