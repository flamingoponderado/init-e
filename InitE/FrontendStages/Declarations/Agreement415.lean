import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify415
import InitE.FrontendStages.Declarations.Agreement399
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original415_eq : original415 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bal_ensure_account := by
  with_unfolding_all rfl
#print axioms original415_eq
end InitE.FrontendStages.Declarations
