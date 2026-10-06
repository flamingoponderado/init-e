import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify210
import InitE.FrontendStages.Declarations.Agreement194
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original210_eq : original210 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_decode_stateless_input := by
  with_unfolding_all rfl
#print axioms original210_eq
end InitE.FrontendStages.Declarations
