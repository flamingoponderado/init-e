import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify78
import InitE.FrontendStages.Declarations.Agreement62
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original78_eq : original78 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bit_length64 := by
  with_unfolding_all rfl
#print axioms original78_eq
end InitE.FrontendStages.Declarations
