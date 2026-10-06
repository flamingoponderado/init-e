import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify61
import InitE.FrontendStages.Declarations.Agreement45
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original61_eq : original61 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_mul := by
  with_unfolding_all rfl
#print axioms original61_eq
end InitE.FrontendStages.Declarations
