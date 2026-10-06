import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify604
import InitE.FrontendStages.Declarations.Agreement588
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original604_eq : original604 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_generic_call := by
  with_unfolding_all rfl
#print axioms original604_eq
end InitE.FrontendStages.Declarations
