import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify565
import InitE.FrontendStages.Declarations.Agreement549
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original565_eq : original565 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_cur_cont := by
  with_unfolding_all rfl
#print axioms original565_eq
end InitE.FrontendStages.Declarations
