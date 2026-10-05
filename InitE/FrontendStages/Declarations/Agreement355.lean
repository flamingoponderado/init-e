import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify355
import InitE.FrontendStages.Declarations.Agreement339
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original355_eq : original355 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_journal := by
  with_unfolding_all rfl
#print axioms original355_eq
end InitE.FrontendStages.Declarations
