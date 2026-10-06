import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify685
import InitE.FrontendStages.Declarations.Agreement669
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original685_eq : original685 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fe_sqr := by
  with_unfolding_all rfl
#print axioms original685_eq
end InitE.FrontendStages.Declarations
