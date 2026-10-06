import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify801
import InitE.FrontendStages.Declarations.Agreement785
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original801_eq : original801 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_g1_double := by
  with_unfolding_all rfl
#print axioms original801_eq
end InitE.FrontendStages.Declarations
