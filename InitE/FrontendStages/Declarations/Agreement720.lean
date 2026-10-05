import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify720
import InitE.FrontendStages.Declarations.Agreement704
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original720_eq : original720 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_bls_c := by
  with_unfolding_all rfl
#print axioms original720_eq
end InitE.FrontendStages.Declarations
