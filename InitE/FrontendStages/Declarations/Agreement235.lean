import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify235
import InitE.FrontendStages.Declarations.Agreement219
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original235_eq : original235 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_taylor_exponential := by
  with_unfolding_all rfl
#print axioms original235_eq
end InitE.FrontendStages.Declarations
