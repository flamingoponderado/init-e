import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify13
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original13_eq : original13 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_frame_mem_release := by
  with_unfolding_all rfl
#print axioms original13_eq
end InitE.FrontendStages.Declarations
