import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify270
import InitE.FrontendStages.Declarations.Agreement254
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original270_eq : original270 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_trie_lookup := by
  with_unfolding_all rfl
#print axioms original270_eq
end InitE.FrontendStages.Declarations
