import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify271
import InitE.FrontendStages.Declarations.Agreement255
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original271_eq : original271 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_mpt_new := by
  with_unfolding_all rfl
#print axioms original271_eq
end InitE.FrontendStages.Declarations
