import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify124
import InitE.FrontendStages.Declarations.Agreement108
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original124_eq : original124 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_rlp_encode_word := by
  with_unfolding_all rfl
#print axioms original124_eq
end InitE.FrontendStages.Declarations
