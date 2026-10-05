import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify829
import InitE.FrontendStages.Declarations.Agreement813
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original829_eq : original829 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_iso_map_g1 := by
  with_unfolding_all rfl
#print axioms original829_eq
end InitE.FrontendStages.Declarations
