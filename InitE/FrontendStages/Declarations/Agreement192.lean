import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify192
import InitE.FrontendStages.Declarations.Agreement176
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original192_eq : original192 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ssz_init := by
  with_unfolding_all rfl
#print axioms original192_eq
end InitE.FrontendStages.Declarations
