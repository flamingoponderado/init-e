import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify58
import InitE.FrontendStages.Declarations.Agreement42
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original58_eq : original58 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_sub := by
  with_unfolding_all rfl
#print axioms original58_eq
end InitE.FrontendStages.Declarations
