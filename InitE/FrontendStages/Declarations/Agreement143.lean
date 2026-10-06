import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify143
import InitE.FrontendStages.Declarations.Agreement127
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original143_eq : original143 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htab_item := by
  with_unfolding_all rfl
#print axioms original143_eq
end InitE.FrontendStages.Declarations
