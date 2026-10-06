import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify255
import InitE.FrontendStages.Declarations.Agreement239
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original255_eq : original255 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_nibbles_concat := by
  with_unfolding_all rfl
#print axioms original255_eq
end InitE.FrontendStages.Declarations
