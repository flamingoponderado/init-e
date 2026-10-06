import InitE.FrontendStages.Loop.Data395
import InitE.WordStages.Source459
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate379
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate395_eq : InitE.WordFrontendComputation.compileEntry Loop.output395 =
    InitE.WordStages.source459 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate395_eq
end InitE.FrontendStages.Word
