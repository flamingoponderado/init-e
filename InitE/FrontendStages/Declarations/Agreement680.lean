import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify680
import InitE.FrontendStages.Declarations.Agreement664
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original680_eq : original680 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_fq2_mul := by
  with_unfolding_all rfl
#print axioms original680_eq
end InitE.FrontendStages.Declarations
