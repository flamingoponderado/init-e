import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify181
import InitE.FrontendStages.Declarations.Agreement165
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original181_eq : original181 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ec_mul2 := by
  with_unfolding_all rfl
#print axioms original181_eq
end InitE.FrontendStages.Declarations
