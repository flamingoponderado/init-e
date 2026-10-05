import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify380
import InitE.FrontendStages.Declarations.Agreement364
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original380_eq : original380 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_stor_lookup := by
  with_unfolding_all rfl
#print axioms original380_eq
end InitE.FrontendStages.Declarations
