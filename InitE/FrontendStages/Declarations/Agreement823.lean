import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify823
import InitE.FrontendStages.Declarations.Agreement807
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original823_eq : original823 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_pair_ell := by
  with_unfolding_all rfl
#print axioms original823_eq
end InitE.FrontendStages.Declarations
