import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify741
import InitE.FrontendStages.Declarations.Agreement725
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original741_eq : original741 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_fp_shr1 := by
  with_unfolding_all rfl
#print axioms original741_eq
end InitE.FrontendStages.Declarations
