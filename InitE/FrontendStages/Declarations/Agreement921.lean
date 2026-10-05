import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify921
import InitE.FrontendStages.Declarations.Agreement905
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original921_eq : original921 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_attempt_l3 := by
  with_unfolding_all rfl
#print axioms original921_eq
end InitE.FrontendStages.Declarations
