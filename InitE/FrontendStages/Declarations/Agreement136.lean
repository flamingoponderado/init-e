import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify136
import InitE.FrontendStages.Declarations.Agreement120
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original136_eq : original136 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htab_grow := by
  with_unfolding_all rfl
#print axioms original136_eq
end InitE.FrontendStages.Declarations
