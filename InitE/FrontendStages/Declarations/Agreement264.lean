import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify264
import InitE.FrontendStages.Declarations.Agreement248
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original264_eq : original264 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn__decode_step := by
  with_unfolding_all rfl
#print axioms original264_eq
end InitE.FrontendStages.Declarations
