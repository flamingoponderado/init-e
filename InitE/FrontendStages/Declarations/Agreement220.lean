import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify220
import InitE.FrontendStages.Declarations.Agreement204
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original220_eq : original220 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htr_requests := by
  with_unfolding_all rfl
#print axioms original220_eq
end InitE.FrontendStages.Declarations
