import InitE.FrontendCodecComputation
import InitE.CompactComputation
import InitE.FrontendStages.Declarations.Data390
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open scoped InitE.FrontendComputation
open Flapjack
namespace InitE.FrontendStages.Declarations
theorem simplify390_eq : InitE.FrontendComputation.simplifyDeclaration original390 = simplified390 := by
  change InitE.FrontendComputation.simplifyDeclaration (Flapjack.Pancake.PanLang.declToHOL originalData390) = Flapjack.Pancake.PanLang.declToHOL simplifiedData390
  simp only [InitE.FrontendCodecComputation.declToHOL_eq]
  kernel_rfl
#print axioms simplify390_eq
end InitE.FrontendStages.Declarations
