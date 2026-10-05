import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify802
import InitE.FrontendStages.Declarations.Agreement786
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original802_eq : original802 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_g1_add := by
  with_unfolding_all rfl
#print axioms original802_eq
end InitE.FrontendStages.Declarations
