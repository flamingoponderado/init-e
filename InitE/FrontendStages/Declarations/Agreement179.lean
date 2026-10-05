import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify179
import InitE.FrontendStages.Declarations.Agreement163
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original179_eq : original179 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ec_add := by
  with_unfolding_all rfl
#print axioms original179_eq
end InitE.FrontendStages.Declarations
