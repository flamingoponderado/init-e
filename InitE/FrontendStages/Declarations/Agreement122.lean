import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify122
import InitE.FrontendStages.Declarations.Agreement106
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original122_eq : original122 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_rlp_header_len := by
  with_unfolding_all rfl
#print axioms original122_eq
end InitE.FrontendStages.Declarations
