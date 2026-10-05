import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify598
import InitE.FrontendStages.Declarations.Agreement582
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original598_eq : original598 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_set_retdata := by
  with_unfolding_all rfl
#print axioms original598_eq
end InitE.FrontendStages.Declarations
