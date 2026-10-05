import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify729
import InitE.FrontendStages.Declarations.Agreement713
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original729_eq : original729 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_fp_neg := by
  with_unfolding_all rfl
#print axioms original729_eq
end InitE.FrontendStages.Declarations
