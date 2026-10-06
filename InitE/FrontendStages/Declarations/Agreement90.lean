import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify90
import InitE.FrontendStages.Declarations.Agreement74
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original90_eq : original90 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_sha_st := by
  with_unfolding_all rfl
#print axioms original90_eq
end InitE.FrontendStages.Declarations
