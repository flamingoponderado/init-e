import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify460
import InitE.FrontendStages.Declarations.Agreement444
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original460_eq : original460 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_memory_gas_cost := by
  with_unfolding_all rfl
#print axioms original460_eq
end InitE.FrontendStages.Declarations
