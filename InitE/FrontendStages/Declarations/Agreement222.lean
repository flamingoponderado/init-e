import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify222
import InitE.FrontendStages.Declarations.Agreement206
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original222_eq : original222 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_serialize_result := by
  with_unfolding_all rfl
#print axioms original222_eq
end InitE.FrontendStages.Declarations
