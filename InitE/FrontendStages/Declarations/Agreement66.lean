import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify66
import InitE.FrontendStages.Declarations.Agreement50
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original66_eq : original66 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_digits_to_u256 := by
  with_unfolding_all rfl
#print axioms original66_eq
end InitE.FrontendStages.Declarations
