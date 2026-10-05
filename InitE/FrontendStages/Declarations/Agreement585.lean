import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify585
import InitE.FrontendStages.Declarations.Agreement569
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original585_eq : original585 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_frame_epilogue := by
  with_unfolding_all rfl
#print axioms original585_eq
end InitE.FrontendStages.Declarations
