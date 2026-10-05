import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify283
import InitE.FrontendStages.Declarations.Agreement267
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original283_eq : original283 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_mpt_set := by
  with_unfolding_all rfl
#print axioms original283_eq
end InitE.FrontendStages.Declarations
