import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify191
import InitE.FrontendStages.Declarations.Agreement175
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original191_eq : original191 = Flapjack.Pancake.PanLang.declToHOL Guest.guestGlobal_ssz_offs := by
  with_unfolding_all rfl
#print axioms original191_eq
end InitE.FrontendStages.Declarations
