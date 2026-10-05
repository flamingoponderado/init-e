import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify31
import InitE.FrontendStages.Declarations.Agreement15
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original31_eq : original31 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_output_write := by
  with_unfolding_all rfl
#print axioms original31_eq
end InitE.FrontendStages.Declarations
