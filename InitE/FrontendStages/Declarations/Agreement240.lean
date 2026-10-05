import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify240
import InitE.FrontendStages.Declarations.Agreement224
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original240_eq : original240 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_hdr_zero8 := by
  with_unfolding_all rfl
#print axioms original240_eq
end InitE.FrontendStages.Declarations
