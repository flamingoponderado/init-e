import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify581
import InitE.FrontendStages.Declarations.Agreement565
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original581_eq : original581 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_frame_open := by
  with_unfolding_all rfl
#print axioms original581_eq
end InitE.FrontendStages.Declarations
