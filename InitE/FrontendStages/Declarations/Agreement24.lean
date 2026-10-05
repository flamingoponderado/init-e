import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify24
import InitE.FrontendStages.Declarations.Agreement8
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original24_eq : original24 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bswap64 := by
  with_unfolding_all rfl
#print axioms original24_eq
end InitE.FrontendStages.Declarations
