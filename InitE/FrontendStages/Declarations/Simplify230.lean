import InitE.FrontendCodecComputation
import InitE.CompactComputation
import InitE.FrontendStages.Declarations.Data230
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify230_eq : InitE.FrontendComputation.simplifyDeclaration original230 = simplified230 := by
  change InitE.FrontendComputation.simplifyDeclaration (Flapjack.Pancake.PanLang.declToHOL originalData230) = Flapjack.Pancake.PanLang.declToHOL simplifiedData230
  simp only [InitE.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify230_eq
end InitE.FrontendStages.Declarations
