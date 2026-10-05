import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify844
import InitE.FrontendStages.Declarations.Agreement828
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original844_eq : original844 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_g2_msm_exec := by
  with_unfolding_all rfl
#print axioms original844_eq
end InitE.FrontendStages.Declarations
