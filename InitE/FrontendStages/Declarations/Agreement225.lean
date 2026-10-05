import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify225
import InitE.FrontendStages.Declarations.Agreement209
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original225_eq : original225 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_hdr_uint_field := by
  with_unfolding_all rfl
#print axioms original225_eq
end InitE.FrontendStages.Declarations
