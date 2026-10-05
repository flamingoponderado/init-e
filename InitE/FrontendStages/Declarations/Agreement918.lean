import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify918
import InitE.FrontendStages.Declarations.Agreement902
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original918_eq : original918 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_run_attempt := by
  with_unfolding_all rfl
#print axioms original918_eq
end InitE.FrontendStages.Declarations
