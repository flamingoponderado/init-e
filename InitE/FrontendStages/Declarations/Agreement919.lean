import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify919
import InitE.FrontendStages.Declarations.Agreement903
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original919_eq : original919 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_attempt_l1 := by
  with_unfolding_all rfl
#print axioms original919_eq
end InitE.FrontendStages.Declarations
