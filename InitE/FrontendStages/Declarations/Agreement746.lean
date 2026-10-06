import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify746
import InitE.FrontendStages.Declarations.Agreement730
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original746_eq : original746 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_fp_sgn0 := by
  with_unfolding_all rfl
#print axioms original746_eq
end InitE.FrontendStages.Declarations
