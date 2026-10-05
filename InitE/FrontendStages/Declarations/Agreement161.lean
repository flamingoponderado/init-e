import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify161
import InitE.FrontendStages.Declarations.Agreement145
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original161_eq : original161 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp_inv_fermat := by
  with_unfolding_all rfl
#print axioms original161_eq
end InitE.FrontendStages.Declarations
