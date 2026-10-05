import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify914
import InitE.FrontendStages.Declarations.Agreement898
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original914_eq : original914 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_process_withdrawals := by
  with_unfolding_all rfl
#print axioms original914_eq
end InitE.FrontendStages.Declarations
