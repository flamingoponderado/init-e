import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify64
import InitE.FrontendStages.Declarations.Agreement48
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original64_eq : original64 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_div64by32 := by
  with_unfolding_all rfl
#print axioms original64_eq
end InitE.FrontendStages.Declarations
