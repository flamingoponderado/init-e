import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify760
import InitE.FrontendStages.Declarations.Agreement744
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original760_eq : original760 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp2_accel_init := by
  with_unfolding_all rfl
#print axioms original760_eq
end InitE.FrontendStages.Declarations
