import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify716
import InitE.FrontendStages.Declarations.Agreement700
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original716_eq : original716 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bn254_pairing_check := by
  with_unfolding_all rfl
#print axioms original716_eq
end InitE.FrontendStages.Declarations
