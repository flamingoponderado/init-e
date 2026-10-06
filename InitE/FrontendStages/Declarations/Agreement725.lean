import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify725
import InitE.FrontendStages.Declarations.Agreement709
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original725_eq : original725 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_fp_add_raw := by
  with_unfolding_all rfl
#print axioms original725_eq
end InitE.FrontendStages.Declarations
