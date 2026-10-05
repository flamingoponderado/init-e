import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify19
import InitE.FrontendStages.Declarations.Agreement3
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original19_eq : original19 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_memeq := by
  with_unfolding_all rfl
#print axioms original19_eq
end InitE.FrontendStages.Declarations
