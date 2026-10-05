import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify863
import InitE.FrontendStages.Declarations.Agreement847
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original863_eq : original863 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_pre_sha256 := by
  with_unfolding_all rfl
#print axioms original863_eq
end InitE.FrontendStages.Declarations
