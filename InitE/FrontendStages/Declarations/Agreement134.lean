import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify134
import InitE.FrontendStages.Declarations.Agreement118
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original134_eq : original134 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htab_has := by
  with_unfolding_all rfl
#print axioms original134_eq
end InitE.FrontendStages.Declarations
