import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify101
import InitE.FrontendStages.Declarations.Agreement85
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original101_eq : original101 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_keccak_init := by
  with_unfolding_all rfl
#print axioms original101_eq
end InitE.FrontendStages.Declarations
