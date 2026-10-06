import InitE.FrontendCodecComputation
import InitE.CompactComputation
import InitE.FrontendStages.Declarations.Data810
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify810_eq : InitE.FrontendComputation.simplifyDeclaration original810 = simplified810 := by
  change InitE.FrontendComputation.simplifyDeclaration (Flapjack.Pancake.PanLang.declToHOL originalData810) = Flapjack.Pancake.PanLang.declToHOL simplifiedData810
  simp only [InitE.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify810_eq
end InitE.FrontendStages.Declarations
