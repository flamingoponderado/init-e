import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify319
import InitE.FrontendStages.Declarations.Agreement303
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original319_eq : original319 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_blob_count := by
  with_unfolding_all rfl
#print axioms original319_eq
end InitE.FrontendStages.Declarations
