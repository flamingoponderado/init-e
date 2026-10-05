import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify400
import InitE.FrontendStages.Declarations.Agreement384
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original400_eq : original400 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_set_account_balance := by
  with_unfolding_all rfl
#print axioms original400_eq
end InitE.FrontendStages.Declarations
