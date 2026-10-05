import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify841
import InitE.FrontendStages.Declarations.Agreement825
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original841_eq : original841 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_g1_add_exec := by
  with_unfolding_all rfl
#print axioms original841_eq
end InitE.FrontendStages.Declarations
