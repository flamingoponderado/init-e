import InitE.FrontendStages.Loop.Data88
import InitE.WordStages.Source152
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate72
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate88_eq : InitE.WordFrontendComputation.compileEntry Loop.output88 =
    InitE.WordStages.source152 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate88_eq
end InitE.FrontendStages.Word
