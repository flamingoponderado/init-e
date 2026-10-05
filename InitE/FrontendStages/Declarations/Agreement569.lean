import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify569
import InitE.FrontendStages.Declarations.Agreement553
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original569_eq : original569 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_evm_init := by
  with_unfolding_all rfl
#print axioms original569_eq
end InitE.FrontendStages.Declarations
