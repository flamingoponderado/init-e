import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify165
import InitE.FrontendStages.Declarations.Agreement149
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original165_eq : original165 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp_inv := by
  with_unfolding_all rfl
#print axioms original165_eq
end InitE.FrontendStages.Declarations
