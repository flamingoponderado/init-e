import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify131
import InitE.FrontendStages.Declarations.Agreement115
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original131_eq : original131 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htab_hash := by
  with_unfolding_all rfl
#print axioms original131_eq
end InitE.FrontendStages.Declarations
