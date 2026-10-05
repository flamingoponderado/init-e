import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify168
import InitE.FrontendStages.Declarations.Agreement152
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original168_eq : original168 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fn_add := by
  with_unfolding_all rfl
#print axioms original168_eq
end InitE.FrontendStages.Declarations
