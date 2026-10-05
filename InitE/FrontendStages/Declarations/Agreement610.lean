import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify610
import InitE.FrontendStages.Declarations.Agreement594
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original610_eq : original610 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_process_message_call := by
  with_unfolding_all rfl
#print axioms original610_eq
end InitE.FrontendStages.Declarations
