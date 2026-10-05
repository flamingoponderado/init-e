import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify371
import InitE.FrontendStages.Declarations.Agreement355
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original371_eq : original371 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ws_storage_trie := by
  with_unfolding_all rfl
#print axioms original371_eq
end InitE.FrontendStages.Declarations
