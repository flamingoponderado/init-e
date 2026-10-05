import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify475
import InitE.FrontendStages.Declarations.Agreement459
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original475_eq : original475 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_warm_address := by
  with_unfolding_all rfl
#print axioms original475_eq
end InitE.FrontendStages.Declarations
