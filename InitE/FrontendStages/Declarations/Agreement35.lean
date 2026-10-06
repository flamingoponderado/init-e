import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify35
import InitE.FrontendStages.Declarations.Agreement19
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original35_eq : original35 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_udiv := by
  with_unfolding_all rfl
#print axioms original35_eq
end InitE.FrontendStages.Declarations
