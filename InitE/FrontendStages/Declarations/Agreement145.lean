import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify145
import InitE.FrontendStages.Declarations.Agreement129
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original145_eq : original145 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_htab_copy := by
  with_unfolding_all rfl
#print axioms original145_eq
end InitE.FrontendStages.Declarations
