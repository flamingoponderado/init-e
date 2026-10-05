import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify736
import InitE.FrontendStages.Declarations.Agreement720
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original736_eq : original736 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp_accel_init := by
  with_unfolding_all rfl
#print axioms original736_eq
end InitE.FrontendStages.Declarations
