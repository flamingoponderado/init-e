import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify570
import InitE.FrontendStages.Declarations.Agreement554
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original570_eq : original570 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_emit_transfer_log := by
  with_unfolding_all rfl
#print axioms original570_eq
end InitE.FrontendStages.Declarations
