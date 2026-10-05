import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify184
import InitE.FrontendStages.Declarations.Agreement168
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original184_eq : original184 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_secp256k1_decompress_r := by
  with_unfolding_all rfl
#print axioms original184_eq
end InitE.FrontendStages.Declarations
