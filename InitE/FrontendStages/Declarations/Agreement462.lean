import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify462
import InitE.FrontendStages.Declarations.Agreement446
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original462_eq : original462 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_extend_memory_cost2 := by
  with_unfolding_all rfl
#print axioms original462_eq
end InitE.FrontendStages.Declarations
