import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify204
import InitE.FrontendStages.Declarations.Agreement188
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original204_eq : original204 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ssz_check_offsets := by
  with_unfolding_all rfl
#print axioms original204_eq
end InitE.FrontendStages.Declarations
