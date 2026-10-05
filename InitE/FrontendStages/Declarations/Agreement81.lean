import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify81
import InitE.FrontendStages.Declarations.Agreement65
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original81_eq : original81 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_exp := by
  with_unfolding_all rfl
#print axioms original81_eq
end InitE.FrontendStages.Declarations
