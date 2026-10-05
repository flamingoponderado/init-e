import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify816
import InitE.FrontendStages.Declarations.Agreement800
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original816_eq : original816 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_g2_normalize := by
  with_unfolding_all rfl
#print axioms original816_eq
end InitE.FrontendStages.Declarations
