import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify642
import InitE.FrontendStages.Declarations.Agreement626
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original642_eq : original642 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_p256_set_affine := by
  with_unfolding_all rfl
#print axioms original642_eq
end InitE.FrontendStages.Declarations
