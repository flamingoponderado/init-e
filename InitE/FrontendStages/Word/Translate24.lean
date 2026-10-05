import InitE.FrontendStages.Loop.Data24
import InitE.WordStages.Source88
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate8
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate24_eq : InitE.WordFrontendComputation.compileEntry Loop.output24 =
    InitE.WordStages.source88 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate24_eq
end InitE.FrontendStages.Word
