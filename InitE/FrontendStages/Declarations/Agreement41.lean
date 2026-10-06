import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify41
import InitE.FrontendStages.Declarations.Agreement25
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original41_eq : original41 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_low := by
  with_unfolding_all rfl
#print axioms original41_eq
end InitE.FrontendStages.Declarations
