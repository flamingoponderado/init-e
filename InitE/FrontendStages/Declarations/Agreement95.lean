import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify95
import InitE.FrontendStages.Declarations.Agreement79
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original95_eq : original95 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_sha256_block := by
  with_unfolding_all rfl
#print axioms original95_eq
end InitE.FrontendStages.Declarations
