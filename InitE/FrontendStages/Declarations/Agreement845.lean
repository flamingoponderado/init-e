import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify845
import InitE.FrontendStages.Declarations.Agreement829
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original845_eq : original845 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_bls_pairing_exec := by
  with_unfolding_all rfl
#print axioms original845_eq
end InitE.FrontendStages.Declarations
