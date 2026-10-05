import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify158
import InitE.FrontendStages.Declarations.Agreement142
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original158_eq : original158 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp_sqr := by
  with_unfolding_all rfl
#print axioms original158_eq
end InitE.FrontendStages.Declarations
