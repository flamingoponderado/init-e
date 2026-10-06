import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify401
import InitE.FrontendStages.Declarations.Agreement385
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original401_eq : original401 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_increment_nonce := by
  with_unfolding_all rfl
#print axioms original401_eq
end InitE.FrontendStages.Declarations
