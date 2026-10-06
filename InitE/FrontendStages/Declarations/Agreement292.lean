import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify292
import InitE.FrontendStages.Declarations.Agreement276
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original292_eq : original292 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_node_write_ref := by
  with_unfolding_all rfl
#print axioms original292_eq
end InitE.FrontendStages.Declarations
