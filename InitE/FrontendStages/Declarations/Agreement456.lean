import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify456
import InitE.FrontendStages.Declarations.Agreement440
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original456_eq : original456 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_stack_pop := by
  with_unfolding_all rfl
#print axioms original456_eq
end InitE.FrontendStages.Declarations
