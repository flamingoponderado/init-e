import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify331
import InitE.FrontendStages.Declarations.Agreement315
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original331_eq : original331 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_tx_encode_generic := by
  with_unfolding_all rfl
#print axioms original331_eq
end InitE.FrontendStages.Declarations
