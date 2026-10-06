import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify821
import InitE.FrontendStages.Declarations.Agreement805
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original821_eq : original821 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_pair_doubling_step := by
  with_unfolding_all rfl
#print axioms original821_eq
end InitE.FrontendStages.Declarations
