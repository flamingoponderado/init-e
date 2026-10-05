import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify726
import InitE.FrontendStages.Declarations.Agreement710
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original726_eq : original726 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_fp_sub_raw := by
  with_unfolding_all rfl
#print axioms original726_eq
end InitE.FrontendStages.Declarations
