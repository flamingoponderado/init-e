import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify756
import InitE.FrontendStages.Declarations.Agreement740
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original756_eq : original756 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp2_eq := by
  with_unfolding_all rfl
#print axioms original756_eq
end InitE.FrontendStages.Declarations
