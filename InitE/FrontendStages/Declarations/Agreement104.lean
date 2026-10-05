import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify104
import InitE.FrontendStages.Declarations.Agreement88
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original104_eq : original104 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_keccak256 := by
  with_unfolding_all rfl
#print axioms original104_eq
end InitE.FrontendStages.Declarations
