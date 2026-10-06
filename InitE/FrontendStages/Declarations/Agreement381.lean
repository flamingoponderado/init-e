import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify381
import InitE.FrontendStages.Declarations.Agreement365
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original381_eq : original381 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_get_storage := by
  with_unfolding_all rfl
#print axioms original381_eq
end InitE.FrontendStages.Declarations
