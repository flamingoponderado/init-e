import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify645
import InitE.FrontendStages.Declarations.Agreement629
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original645_eq : original645 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_p256_ec_mul2 := by
  with_unfolding_all rfl
#print axioms original645_eq
end InitE.FrontendStages.Declarations
