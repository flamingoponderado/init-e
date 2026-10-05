import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify76
import InitE.FrontendStages.Declarations.Agreement60
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original76_eq : original76 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_addmod := by
  with_unfolding_all rfl
#print axioms original76_eq
end InitE.FrontendStages.Declarations
