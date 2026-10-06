import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify22
import InitE.FrontendStages.Declarations.Agreement6
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original22_eq : original22 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ld_le64 := by
  with_unfolding_all rfl
#print axioms original22_eq
end InitE.FrontendStages.Declarations
