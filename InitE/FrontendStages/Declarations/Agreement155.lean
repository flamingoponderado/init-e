import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify155
import InitE.FrontendStages.Declarations.Agreement139
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original155_eq : original155 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp_neg := by
  with_unfolding_all rfl
#print axioms original155_eq
end InitE.FrontendStages.Declarations
