import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify129
import InitE.FrontendStages.Declarations.Agreement113
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original129_eq : original129 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htab_new := by
  with_unfolding_all rfl
#print axioms original129_eq
end InitE.FrontendStages.Declarations
