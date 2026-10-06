import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify169
import InitE.FrontendStages.Declarations.Agreement153
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original169_eq : original169 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_secp_accel_fn_pow4 := by
  with_unfolding_all rfl
#print axioms original169_eq
end InitE.FrontendStages.Declarations
