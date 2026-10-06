import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify915
import InitE.FrontendStages.Declarations.Agreement899
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original915_eq : original915 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_requests_append := by
  with_unfolding_all rfl
#print axioms original915_eq
end InitE.FrontendStages.Declarations
