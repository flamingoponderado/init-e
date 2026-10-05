import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify215
import InitE.FrontendStages.Declarations.Agreement199
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original215_eq : original215 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htr_wdreq := by
  with_unfolding_all rfl
#print axioms original215_eq
end InitE.FrontendStages.Declarations
