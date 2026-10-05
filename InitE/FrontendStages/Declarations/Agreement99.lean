import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify99
import InitE.FrontendStages.Declarations.Agreement83
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original99_eq : original99 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_keccak_st := by
  with_unfolding_all rfl
#print axioms original99_eq
end InitE.FrontendStages.Declarations
