import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify878
import InitE.FrontendStages.Declarations.Agreement862
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original878_eq : original878 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_encode_execution_requests := by
  with_unfolding_all rfl
#print axioms original878_eq
end InitE.FrontendStages.Declarations
