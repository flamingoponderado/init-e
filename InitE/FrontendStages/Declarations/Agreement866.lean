import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify866
import InitE.FrontendStages.Declarations.Agreement850
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original866_eq : original866 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_pre_blake2f := by
  with_unfolding_all rfl
#print axioms original866_eq
end InitE.FrontendStages.Declarations
