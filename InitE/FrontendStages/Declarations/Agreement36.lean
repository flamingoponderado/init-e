import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify36
import InitE.FrontendStages.Declarations.Agreement20
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original36_eq : original36 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_umod := by
  with_unfolding_all rfl
#print axioms original36_eq
end InitE.FrontendStages.Declarations
