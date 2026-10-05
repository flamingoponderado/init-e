import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify805
import InitE.FrontendStages.Declarations.Agreement789
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original805_eq : original805 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_g1_on_curve := by
  with_unfolding_all rfl
#print axioms original805_eq
end InitE.FrontendStages.Declarations
