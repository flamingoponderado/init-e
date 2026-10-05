import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify580
import InitE.FrontendStages.Declarations.Agreement564
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original580_eq : original580 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_op_dispatch := by
  with_unfolding_all rfl
#print axioms original580_eq
end InitE.FrontendStages.Declarations
