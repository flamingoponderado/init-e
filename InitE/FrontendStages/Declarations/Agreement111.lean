import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify111
import InitE.FrontendStages.Declarations.Agreement95
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original111_eq : original111 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn__rlp_validate_items_body := by
  with_unfolding_all rfl
#print axioms original111_eq
end InitE.FrontendStages.Declarations
