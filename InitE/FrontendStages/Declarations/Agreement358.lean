import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify358
import InitE.FrontendStages.Declarations.Agreement342
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original358_eq : original358 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_state_fresh_tx := by
  with_unfolding_all rfl
#print axioms original358_eq
end InitE.FrontendStages.Declarations
