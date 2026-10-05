import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify382
import InitE.FrontendStages.Declarations.Agreement366
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original382_eq : original382 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_get_storage_original := by
  with_unfolding_all rfl
#print axioms original382_eq
end InitE.FrontendStages.Declarations
