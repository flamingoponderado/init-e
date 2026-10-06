import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify345
import InitE.FrontendStages.Declarations.Agreement329
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original345_eq : original345 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_recover_sender := by
  with_unfolding_all rfl
#print axioms original345_eq
end InitE.FrontendStages.Declarations
