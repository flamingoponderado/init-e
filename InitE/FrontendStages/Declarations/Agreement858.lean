import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify858
import InitE.FrontendStages.Declarations.Agreement842
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original858_eq : original858 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_pre_bls_map_fp_to_g1 := by
  with_unfolding_all rfl
#print axioms original858_eq
end InitE.FrontendStages.Declarations
