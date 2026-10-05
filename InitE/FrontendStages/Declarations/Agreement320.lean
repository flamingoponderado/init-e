import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify320
import InitE.FrontendStages.Declarations.Agreement304
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original320_eq : original320 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_calculate_total_blob_gas := by
  with_unfolding_all rfl
#print axioms original320_eq
end InitE.FrontendStages.Declarations
