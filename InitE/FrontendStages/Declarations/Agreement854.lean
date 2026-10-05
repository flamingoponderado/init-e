import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify854
import InitE.FrontendStages.Declarations.Agreement838
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original854_eq : original854 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_pre_bls_g1_msm := by
  with_unfolding_all rfl
#print axioms original854_eq
end InitE.FrontendStages.Declarations
