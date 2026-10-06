import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify214
import InitE.FrontendStages.Declarations.Agreement198
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original214_eq : original214 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htr_deposit := by
  with_unfolding_all rfl
#print axioms original214_eq
end InitE.FrontendStages.Declarations
