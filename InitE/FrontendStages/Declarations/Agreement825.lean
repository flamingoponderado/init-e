import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify825
import InitE.FrontendStages.Declarations.Agreement809
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original825_eq : original825 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_pair_accumulate := by
  with_unfolding_all rfl
#print axioms original825_eq
end InitE.FrontendStages.Declarations
