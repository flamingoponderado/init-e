import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify92
import InitE.FrontendStages.Declarations.Agreement76
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original92_eq : original92 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_sha_accel := by
  with_unfolding_all rfl
#print axioms original92_eq
end InitE.FrontendStages.Declarations
