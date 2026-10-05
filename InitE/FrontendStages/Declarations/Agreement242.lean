import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify242
import InitE.FrontendStages.Declarations.Agreement226
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original242_eq : original242 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_validate_header := by
  with_unfolding_all rfl
#print axioms original242_eq
end InitE.FrontendStages.Declarations
