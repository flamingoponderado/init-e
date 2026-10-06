import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify828
import InitE.FrontendStages.Declarations.Agreement812
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original828_eq : original828 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_iso_horner_fp := by
  with_unfolding_all rfl
#print axioms original828_eq
end InitE.FrontendStages.Declarations
