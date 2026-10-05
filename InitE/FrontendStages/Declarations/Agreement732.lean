import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify732
import InitE.FrontendStages.Declarations.Agreement716
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original732_eq : original732 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_fp_accel_b := by
  with_unfolding_all rfl
#print axioms original732_eq
end InitE.FrontendStages.Declarations
