import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify203
import InitE.FrontendStages.Declarations.Agreement187
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original203_eq : original203 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_ssz_fail := by
  with_unfolding_all rfl
#print axioms original203_eq
end InitE.FrontendStages.Declarations
