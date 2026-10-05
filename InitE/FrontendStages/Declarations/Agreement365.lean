import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify365
import InitE.FrontendStages.Declarations.Agreement349
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original365_eq : original365 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_acct_empty := by
  with_unfolding_all rfl
#print axioms original365_eq
end InitE.FrontendStages.Declarations
