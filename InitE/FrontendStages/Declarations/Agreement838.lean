import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify838
import InitE.FrontendStages.Declarations.Agreement822
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original838_eq : original838 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_kzg_neg_scalar := by
  with_unfolding_all rfl
#print axioms original838_eq
end InitE.FrontendStages.Declarations
