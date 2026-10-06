import InitE.FrontendCodecComputation
import InitE.CompactComputation
import InitE.FrontendStages.Declarations.Data819
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify819_eq : InitE.FrontendComputation.simplifyDeclaration original819 = simplified819 := by
  change InitE.FrontendComputation.simplifyDeclaration (Flapjack.Pancake.PanLang.declToHOL originalData819) = Flapjack.Pancake.PanLang.declToHOL simplifiedData819
  simp only [InitE.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify819_eq
end InitE.FrontendStages.Declarations
