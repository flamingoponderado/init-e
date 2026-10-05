import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify100
import InitE.FrontendStages.Declarations.Agreement84
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original100_eq : original100 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_keccak_pad := by
  with_unfolding_all rfl
#print axioms original100_eq
end InitE.FrontendStages.Declarations
