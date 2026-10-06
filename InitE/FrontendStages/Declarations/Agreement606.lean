import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify606
import InitE.FrontendStages.Declarations.Agreement590
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original606_eq : original606 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_call := by
  with_unfolding_all rfl
#print axioms original606_eq
end InitE.FrontendStages.Declarations
