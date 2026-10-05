import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify175
import InitE.FrontendStages.Declarations.Agreement159
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original175_eq : original175 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ec_is_infinity := by
  with_unfolding_all rfl
#print axioms original175_eq
end InitE.FrontendStages.Declarations
