import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify617
import InitE.FrontendStages.Declarations.Agreement601
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original617_eq : original617 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_rmd_k := by
  with_unfolding_all rfl
#print axioms original617_eq
end InitE.FrontendStages.Declarations
