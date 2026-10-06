import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify384
import InitE.FrontendStages.Declarations.Agreement368
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original384_eq : original384 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_account_exists := by
  with_unfolding_all rfl
#print axioms original384_eq
end InitE.FrontendStages.Declarations
