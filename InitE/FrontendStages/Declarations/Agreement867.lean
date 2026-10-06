import Guest.Ast
import InitE.FrontendStages.Declarations.Simplify867
import InitE.FrontendStages.Declarations.Agreement851
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
namespace InitE.FrontendStages.Declarations
theorem original867_eq : original867 = Flapjack.Pancake.PanLang.declToHOL Guest.guestFn_modexp_gas := by
  with_unfolding_all rfl
#print axioms original867_eq
end InitE.FrontendStages.Declarations
