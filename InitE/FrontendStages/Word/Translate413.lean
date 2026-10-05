import InitE.FrontendStages.Loop.Data413
import InitE.WordStages.Source477
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate397
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate413_eq : InitE.WordFrontendComputation.compileEntry Loop.output413 =
    InitE.WordStages.source477 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate413_eq
end InitE.FrontendStages.Word
