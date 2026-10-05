import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify357
import InitE.FrontendStages.Declarations.Agreement341
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original357_eq : original357 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_state_init := by
  with_unfolding_all rfl
#print axioms original357_eq
end InitE.FrontendStages.Declarations
