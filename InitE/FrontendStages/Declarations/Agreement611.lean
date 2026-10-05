import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify611
import InitE.FrontendStages.Declarations.Agreement595
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original611_eq : original611 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_rmd_tab := by
  with_unfolding_all rfl
#print axioms original611_eq
end InitE.FrontendStages.Declarations
