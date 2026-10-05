import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify418
import InitE.FrontendStages.Declarations.Agreement402
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original418_eq : original418 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_add_storage_read := by
  with_unfolding_all rfl
#print axioms original418_eq
end InitE.FrontendStages.Declarations
