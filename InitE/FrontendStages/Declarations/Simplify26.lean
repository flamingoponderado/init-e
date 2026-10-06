import InitE.FrontendCodecComputation
import InitE.CompactComputation
import InitE.FrontendStages.Declarations.Data26
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify26_eq : InitE.FrontendComputation.simplifyDeclaration original26 = simplified26 := by
  change InitE.FrontendComputation.simplifyDeclaration (Flapjack.Pancake.PanLang.declToHOL originalData26) = Flapjack.Pancake.PanLang.declToHOL simplifiedData26
  simp only [InitE.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify26_eq
end InitE.FrontendStages.Declarations
