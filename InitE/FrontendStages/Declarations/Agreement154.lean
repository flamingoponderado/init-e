import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify154
import InitE.FrontendStages.Declarations.Agreement138
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original154_eq : original154 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp_sub := by
  with_unfolding_all rfl
#print axioms original154_eq
end InitE.FrontendStages.Declarations
