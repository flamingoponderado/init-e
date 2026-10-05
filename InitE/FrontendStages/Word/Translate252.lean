import InitE.FrontendStages.Loop.Data252
import InitE.WordStages.Source316
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate236
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate252_eq : InitE.WordFrontendComputation.compileEntry Loop.output252 =
    InitE.WordStages.source316 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate252_eq
end InitE.FrontendStages.Word
