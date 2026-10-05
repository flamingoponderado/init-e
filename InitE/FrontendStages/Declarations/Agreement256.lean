import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify256
import InitE.FrontendStages.Declarations.Agreement240
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original256_eq : original256 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_nodedb_build := by
  with_unfolding_all rfl
#print axioms original256_eq
end InitE.FrontendStages.Declarations
