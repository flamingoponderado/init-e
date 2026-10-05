import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify213
import InitE.FrontendStages.Declarations.Agreement197
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original213_eq : original213 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htr_payload := by
  with_unfolding_all rfl
#print axioms original213_eq
end InitE.FrontendStages.Declarations
