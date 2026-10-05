import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify50
import InitE.FrontendStages.Declarations.Agreement34
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original50_eq : original50 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_sgt := by
  with_unfolding_all rfl
#print axioms original50_eq
end InitE.FrontendStages.Declarations
