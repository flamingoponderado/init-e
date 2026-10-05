import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify869
import InitE.FrontendStages.Declarations.Agreement853
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original869_eq : original869 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_run_precompile := by
  with_unfolding_all rfl
#print axioms original869_eq
end InitE.FrontendStages.Declarations
