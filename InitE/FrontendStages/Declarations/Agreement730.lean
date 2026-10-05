import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify730
import InitE.FrontendStages.Declarations.Agreement714
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original730_eq : original730 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_fp_dbl := by
  with_unfolding_all rfl
#print axioms original730_eq
end InitE.FrontendStages.Declarations
