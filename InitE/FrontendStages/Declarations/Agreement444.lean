import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify444
import InitE.FrontendStages.Declarations.Agreement428
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original444_eq : original444 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_add_sat := by
  with_unfolding_all rfl
#print axioms original444_eq
end InitE.FrontendStages.Declarations
