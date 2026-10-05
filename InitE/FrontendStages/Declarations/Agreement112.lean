import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify112
import InitE.FrontendStages.Declarations.Agreement96
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original112_eq : original112 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_rlp_validate_items := by
  with_unfolding_all rfl
#print axioms original112_eq
end InitE.FrontendStages.Declarations
