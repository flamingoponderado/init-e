import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify875
import InitE.FrontendStages.Declarations.Agreement859
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original875_eq : original875 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_encode_receipt := by
  with_unfolding_all rfl
#print axioms original875_eq
end InitE.FrontendStages.Declarations
