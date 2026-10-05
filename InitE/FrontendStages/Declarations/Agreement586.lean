import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify586
import InitE.FrontendStages.Declarations.Agreement570
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original586_eq : original586 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_finish_child := by
  with_unfolding_all rfl
#print axioms original586_eq
end InitE.FrontendStages.Declarations
