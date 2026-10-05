import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify686
import InitE.FrontendStages.Declarations.Agreement670
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original686_eq : original686 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fe_add := by
  with_unfolding_all rfl
#print axioms original686_eq
end InitE.FrontendStages.Declarations
