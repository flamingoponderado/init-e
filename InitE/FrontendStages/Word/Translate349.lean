import InitE.FrontendStages.Loop.Data349
import InitE.WordStages.Source413
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate333
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate349_eq : InitE.WordFrontendComputation.compileEntry Loop.output349 =
    InitE.WordStages.source413 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate349_eq
end InitE.FrontendStages.Word
