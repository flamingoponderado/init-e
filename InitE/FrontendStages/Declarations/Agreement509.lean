import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify509
import InitE.FrontendStages.Declarations.Agreement493
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original509_eq : original509 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_gas := by
  with_unfolding_all rfl
#print axioms original509_eq
end InitE.FrontendStages.Declarations
