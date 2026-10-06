import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify93
import InitE.FrontendStages.Declarations.Agreement77
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original93_eq : original93 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_sha256_init := by
  with_unfolding_all rfl
#print axioms original93_eq
end InitE.FrontendStages.Declarations
