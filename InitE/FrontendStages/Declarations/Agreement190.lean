import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify190
import InitE.FrontendStages.Declarations.Agreement174
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original190_eq : original190 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_ssz_len_chunk := by
  with_unfolding_all rfl
#print axioms original190_eq
end InitE.FrontendStages.Declarations
