import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify422
import InitE.FrontendStages.Declarations.Agreement406
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original422_eq : original422 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_add_touched_account := by
  with_unfolding_all rfl
#print axioms original422_eq
end InitE.FrontendStages.Declarations
