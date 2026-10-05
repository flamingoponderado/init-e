import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify721
import InitE.FrontendStages.Declarations.Agreement705
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original721_eq : original721 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_consts_init := by
  with_unfolding_all rfl
#print axioms original721_eq
end InitE.FrontendStages.Declarations
