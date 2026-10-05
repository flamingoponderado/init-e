import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify142
import InitE.FrontendStages.Declarations.Agreement126
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original142_eq : original142 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htab_slot := by
  with_unfolding_all rfl
#print axioms original142_eq
end InitE.FrontendStages.Declarations
