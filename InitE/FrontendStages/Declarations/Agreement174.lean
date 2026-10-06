import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify174
import InitE.FrontendStages.Declarations.Agreement158
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original174_eq : original174 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ec_set_affine := by
  with_unfolding_all rfl
#print axioms original174_eq
end InitE.FrontendStages.Declarations
