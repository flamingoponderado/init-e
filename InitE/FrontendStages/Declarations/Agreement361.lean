import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify361
import InitE.FrontendStages.Declarations.Agreement345
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original361_eq : original361 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_state_snapshot := by
  with_unfolding_all rfl
#print axioms original361_eq
end InitE.FrontendStages.Declarations
