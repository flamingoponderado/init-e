import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify850
import InitE.FrontendStages.Declarations.Agreement834
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original850_eq : original850 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_precompiles_init := by
  with_unfolding_all rfl
#print axioms original850_eq
end InitE.FrontendStages.Declarations
