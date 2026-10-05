import InitE.FrontendStages.Loop.Data428
import InitE.WordStages.Source492
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate412
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate428_eq : InitE.WordFrontendComputation.compileEntry Loop.output428 =
    InitE.WordStages.source492 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate428_eq
end InitE.FrontendStages.Word
