import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify85
import InitE.FrontendStages.Declarations.Agreement69
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original85_eq : original85 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_signextend := by
  with_unfolding_all rfl
#print axioms original85_eq
end InitE.FrontendStages.Declarations
