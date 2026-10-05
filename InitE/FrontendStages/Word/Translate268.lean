import InitE.FrontendStages.Loop.Data268
import InitE.WordStages.Source332
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate252
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate268_eq : InitE.WordFrontendComputation.compileEntry Loop.output268 =
    InitE.WordStages.source332 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate268_eq
end InitE.FrontendStages.Word
