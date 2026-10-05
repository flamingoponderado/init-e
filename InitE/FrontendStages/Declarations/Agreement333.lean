import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify333
import InitE.FrontendStages.Declarations.Agreement317
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original333_eq : original333 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_get_transaction_hash := by
  with_unfolding_all rfl
#print axioms original333_eq
end InitE.FrontendStages.Declarations
