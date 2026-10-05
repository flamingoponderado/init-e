import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify650
import InitE.FrontendStages.Declarations.Agreement634
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original650_eq : original650 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_bn_gamma := by
  with_unfolding_all rfl
#print axioms original650_eq
end InitE.FrontendStages.Declarations
