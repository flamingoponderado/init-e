import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify421
import InitE.FrontendStages.Declarations.Agreement405
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original421_eq : original421 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_add_code_change := by
  with_unfolding_all rfl
#print axioms original421_eq
end InitE.FrontendStages.Declarations
