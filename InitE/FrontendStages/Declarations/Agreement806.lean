import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify806
import InitE.FrontendStages.Declarations.Agreement790
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original806_eq : original806 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_g1_decode := by
  with_unfolding_all rfl
#print axioms original806_eq
end InitE.FrontendStages.Declarations
