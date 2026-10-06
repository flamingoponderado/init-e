import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify786
import InitE.FrontendStages.Declarations.Agreement770
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original786_eq : original786 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fp12_sqr := by
  with_unfolding_all rfl
#print axioms original786_eq
end InitE.FrontendStages.Declarations
