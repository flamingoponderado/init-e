import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify644
import InitE.FrontendStages.Declarations.Agreement628
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original644_eq : original644 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_p256_ec_add_affine := by
  with_unfolding_all rfl
#print axioms original644_eq
end InitE.FrontendStages.Declarations
