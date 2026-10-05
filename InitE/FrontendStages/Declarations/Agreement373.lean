import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify373
import InitE.FrontendStages.Declarations.Agreement357
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original373_eq : original373 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ws_get_code := by
  with_unfolding_all rfl
#print axioms original373_eq
end InitE.FrontendStages.Declarations
