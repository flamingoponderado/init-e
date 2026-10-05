import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify153
import InitE.FrontendStages.Declarations.Agreement137
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original153_eq : original153 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp_add := by
  with_unfolding_all rfl
#print axioms original153_eq
end InitE.FrontendStages.Declarations
