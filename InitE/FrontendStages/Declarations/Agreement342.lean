import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify342
import InitE.FrontendStages.Declarations.Agreement326
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original342_eq : original342 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_signature_recovery_parameters := by
  with_unfolding_all rfl
#print axioms original342_eq
end InitE.FrontendStages.Declarations
