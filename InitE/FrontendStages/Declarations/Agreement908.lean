import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify908
import InitE.FrontendStages.Declarations.Agreement892
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original908_eq : original908 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_te_new := by
  with_unfolding_all rfl
#print axioms original908_eq
end InitE.FrontendStages.Declarations
