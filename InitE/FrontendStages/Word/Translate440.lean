import InitE.FrontendStages.Loop.Data440
import InitE.WordStages.Source504
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate424
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate440_eq : InitE.WordFrontendComputation.compileEntry Loop.output440 =
    InitE.WordStages.source504 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate440_eq
end InitE.FrontendStages.Word
