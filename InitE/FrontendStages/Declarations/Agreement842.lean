import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify842
import InitE.FrontendStages.Declarations.Agreement826
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original842_eq : original842 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_g1_msm_exec := by
  with_unfolding_all rfl
#print axioms original842_eq
end InitE.FrontendStages.Declarations
