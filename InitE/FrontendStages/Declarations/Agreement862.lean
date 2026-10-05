import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify862
import InitE.FrontendStages.Declarations.Agreement846
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original862_eq : original862 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_pre_identity := by
  with_unfolding_all rfl
#print axioms original862_eq
end InitE.FrontendStages.Declarations
