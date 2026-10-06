import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify370
import InitE.FrontendStages.Declarations.Agreement354
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original370_eq : original370 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ws_storage_root_of := by
  with_unfolding_all rfl
#print axioms original370_eq
end InitE.FrontendStages.Declarations
