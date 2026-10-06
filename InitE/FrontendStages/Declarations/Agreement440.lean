import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify440
import InitE.FrontendStages.Declarations.Agreement424
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original440_eq : original440 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_evm_empty := by
  with_unfolding_all rfl
#print axioms original440_eq
end InitE.FrontendStages.Declarations
