import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify387
import InitE.FrontendStages.Declarations.Agreement371
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original387_eq : original387 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_acct_is_empty := by
  with_unfolding_all rfl
#print axioms original387_eq
end InitE.FrontendStages.Declarations
