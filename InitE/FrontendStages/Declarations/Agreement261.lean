import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify261
import InitE.FrontendStages.Declarations.Agreement245
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original261_eq : original261 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_node_new_branch := by
  with_unfolding_all rfl
#print axioms original261_eq
end InitE.FrontendStages.Declarations
