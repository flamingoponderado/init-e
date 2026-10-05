import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify521
import InitE.FrontendStages.Declarations.Agreement505
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original521_eq : original521 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_code_imm := by
  with_unfolding_all rfl
#print axioms original521_eq
end InitE.FrontendStages.Declarations
