import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify709
import InitE.FrontendStages.Declarations.Agreement693
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original709_eq : original709 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bn254_miller_raw := by
  with_unfolding_all rfl
#print axioms original709_eq
end InitE.FrontendStages.Declarations
