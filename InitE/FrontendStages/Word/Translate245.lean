import InitE.FrontendStages.Loop.Data245
import InitE.WordStages.Source309
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate229
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate245_eq : InitE.WordFrontendComputation.compileEntry Loop.output245 =
    InitE.WordStages.source309 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate245_eq
end InitE.FrontendStages.Word
