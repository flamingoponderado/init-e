import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify96
import InitE.FrontendStages.Declarations.Agreement80
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original96_eq : original96 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_sha256_finish := by
  with_unfolding_all rfl
#print axioms original96_eq
end InitE.FrontendStages.Declarations
