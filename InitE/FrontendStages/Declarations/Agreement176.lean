import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify176
import InitE.FrontendStages.Declarations.Agreement160
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original176_eq : original176 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_secp_accel_normalize := by
  with_unfolding_all rfl
#print axioms original176_eq
end InitE.FrontendStages.Declarations
