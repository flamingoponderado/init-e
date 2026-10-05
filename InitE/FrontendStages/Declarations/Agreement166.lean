import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify166
import InitE.FrontendStages.Declarations.Agreement150
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original166_eq : original166 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp_sqrt := by
  with_unfolding_all rfl
#print axioms original166_eq
end InitE.FrontendStages.Declarations
