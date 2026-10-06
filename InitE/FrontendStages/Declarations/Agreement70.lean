import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify70
import InitE.FrontendStages.Declarations.Agreement54
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original70_eq : original70 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_divmod := by
  with_unfolding_all rfl
#print axioms original70_eq
end InitE.FrontendStages.Declarations
