import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify82
import InitE.FrontendStages.Declarations.Agreement66
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original82_eq : original82 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_shl := by
  with_unfolding_all rfl
#print axioms original82_eq
end InitE.FrontendStages.Declarations
