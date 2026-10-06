import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify152
import InitE.FrontendStages.Declarations.Agreement136
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original152_eq : original152 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_secp_accel_modmul_n := by
  with_unfolding_all rfl
#print axioms original152_eq
end InitE.FrontendStages.Declarations
