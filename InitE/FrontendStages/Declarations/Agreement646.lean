import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify646
import InitE.FrontendStages.Declarations.Agreement630
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original646_eq : original646 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_p256_ec_to_affine := by
  with_unfolding_all rfl
#print axioms original646_eq
end InitE.FrontendStages.Declarations
