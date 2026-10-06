import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify157
import InitE.FrontendStages.Declarations.Agreement141
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original157_eq : original157 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp_mul := by
  with_unfolding_all rfl
#print axioms original157_eq
end InitE.FrontendStages.Declarations
