import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify441
import InitE.FrontendStages.Declarations.Agreement425
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original441_eq : original441 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_pre_hdr_buf := by
  with_unfolding_all rfl
#print axioms original441_eq
end InitE.FrontendStages.Declarations
