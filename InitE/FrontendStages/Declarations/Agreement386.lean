import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify386
import InitE.FrontendStages.Declarations.Agreement370
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original386_eq : original386 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_account_deployable := by
  with_unfolding_all rfl
#print axioms original386_eq
end InitE.FrontendStages.Declarations
