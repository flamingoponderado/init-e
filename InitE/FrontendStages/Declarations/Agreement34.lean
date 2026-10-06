import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify34
import InitE.FrontendStages.Declarations.Agreement18
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original34_eq : original34 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_udivmod := by
  with_unfolding_all rfl
#print axioms original34_eq
end InitE.FrontendStages.Declarations
