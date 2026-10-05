import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify846
import InitE.FrontendStages.Declarations.Agreement830
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original846_eq : original846 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_map_fp_to_g1_exec := by
  with_unfolding_all rfl
#print axioms original846_eq
end InitE.FrontendStages.Declarations
