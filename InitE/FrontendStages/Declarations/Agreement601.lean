import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify601
import InitE.FrontendStages.Declarations.Agreement585
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original601_eq : original601 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_generic_create := by
  with_unfolding_all rfl
#print axioms original601_eq
end InitE.FrontendStages.Declarations
