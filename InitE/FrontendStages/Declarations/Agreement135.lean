import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify135
import InitE.FrontendStages.Declarations.Agreement119
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original135_eq : original135 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htab_insert_raw := by
  with_unfolding_all rfl
#print axioms original135_eq
end InitE.FrontendStages.Declarations
