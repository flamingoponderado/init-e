import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify26
import InitE.FrontendStages.Declarations.Agreement10
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original26_eq : original26 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_st_le32 := by
  with_unfolding_all rfl
#print axioms original26_eq
end InitE.FrontendStages.Declarations
