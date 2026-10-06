import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify84
import InitE.FrontendStages.Declarations.Agreement68
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original84_eq : original84 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_u256_sar := by
  with_unfolding_all rfl
#print axioms original84_eq
end InitE.FrontendStages.Declarations
