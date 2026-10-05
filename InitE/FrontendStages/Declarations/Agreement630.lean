import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify630
import InitE.FrontendStages.Declarations.Agreement614
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original630_eq : original630 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bn_mul := by
  with_unfolding_all rfl
#print axioms original630_eq
end InitE.FrontendStages.Declarations
