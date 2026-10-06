import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify637
import InitE.FrontendStages.Declarations.Agreement621
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original637_eq : original637 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_p256_fp_reduce := by
  with_unfolding_all rfl
#print axioms original637_eq
end InitE.FrontendStages.Declarations
