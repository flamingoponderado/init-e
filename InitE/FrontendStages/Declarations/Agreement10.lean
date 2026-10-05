import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify10
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original10_eq : original10 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_heap_release := by
  with_unfolding_all rfl
#print axioms original10_eq
end InitE.FrontendStages.Declarations
