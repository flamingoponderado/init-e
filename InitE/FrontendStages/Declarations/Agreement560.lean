import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify560
import InitE.FrontendStages.Declarations.Agreement544
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original560_eq : original560 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_number := by
  with_unfolding_all rfl
#print axioms original560_eq
end InitE.FrontendStages.Declarations
