import InitE.FrontendStages.Loop.Data454
import InitE.WordStages.Source518
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate438
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate454_eq : InitE.WordFrontendComputation.compileEntry Loop.output454 =
    InitE.WordStages.source518 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate454_eq
end InitE.FrontendStages.Word
