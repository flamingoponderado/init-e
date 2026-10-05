import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify635
import InitE.FrontendStages.Declarations.Agreement619
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original635_eq : original635 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_p256_fp_add := by
  with_unfolding_all rfl
#print axioms original635_eq
end InitE.FrontendStages.Declarations
