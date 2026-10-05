import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify583
import InitE.FrontendStages.Declarations.Agreement567
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original583_eq : original583 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_frame_prologue := by
  with_unfolding_all rfl
#print axioms original583_eq
end InitE.FrontendStages.Declarations
