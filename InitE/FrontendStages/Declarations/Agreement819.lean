import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify819
import InitE.FrontendStages.Declarations.Agreement803
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original819_eq : original819 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_g2_encode := by
  with_unfolding_all rfl
#print axioms original819_eq
end InitE.FrontendStages.Declarations
