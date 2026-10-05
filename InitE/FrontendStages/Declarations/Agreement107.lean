import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify107
import InitE.FrontendStages.Declarations.Agreement91
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original107_eq : original107 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_rlp_read_length := by
  with_unfolding_all rfl
#print axioms original107_eq
end InitE.FrontendStages.Declarations
