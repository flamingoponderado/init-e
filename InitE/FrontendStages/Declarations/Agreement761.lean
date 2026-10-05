import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify761
import InitE.FrontendStages.Declarations.Agreement745
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original761_eq : original761 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp2_add := by
  with_unfolding_all rfl
#print axioms original761_eq
end InitE.FrontendStages.Declarations
