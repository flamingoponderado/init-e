import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify16
import InitE.FrontendStages.Declarations.Agreement0
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original16_eq : original16 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_scratch_release := by
  with_unfolding_all rfl
#print axioms original16_eq
end InitE.FrontendStages.Declarations
