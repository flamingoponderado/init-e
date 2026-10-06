import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify32
import InitE.FrontendStages.Declarations.Agreement16
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original32_eq : original32 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_min := by
  with_unfolding_all rfl
#print axioms original32_eq
end InitE.FrontendStages.Declarations
