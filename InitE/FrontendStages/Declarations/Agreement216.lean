import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify216
import InitE.FrontendStages.Declarations.Agreement200
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original216_eq : original216 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htr_cons := by
  with_unfolding_all rfl
#print axioms original216_eq
end InitE.FrontendStages.Declarations
