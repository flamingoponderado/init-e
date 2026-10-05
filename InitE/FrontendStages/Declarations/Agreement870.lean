import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify870
import InitE.FrontendStages.Declarations.Agreement854
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original870_eq : original870 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_add_to_bloom := by
  with_unfolding_all rfl
#print axioms original870_eq
end InitE.FrontendStages.Declarations
