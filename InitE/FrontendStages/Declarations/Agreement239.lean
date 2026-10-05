import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify239
import InitE.FrontendStages.Declarations.Agreement223
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original239_eq : original239 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_calculate_base_fee_per_gas := by
  with_unfolding_all rfl
#print axioms original239_eq
end InitE.FrontendStages.Declarations
