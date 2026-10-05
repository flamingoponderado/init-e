import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify864
import InitE.FrontendStages.Declarations.Agreement848
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original864_eq : original864 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_pre_ecrecover := by
  with_unfolding_all rfl
#print axioms original864_eq
end InitE.FrontendStages.Declarations
