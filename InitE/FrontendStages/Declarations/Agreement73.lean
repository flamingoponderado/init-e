import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify73
import InitE.FrontendStages.Declarations.Agreement57
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original73_eq : original73 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_abs := by
  with_unfolding_all rfl
#print axioms original73_eq
end InitE.FrontendStages.Declarations
