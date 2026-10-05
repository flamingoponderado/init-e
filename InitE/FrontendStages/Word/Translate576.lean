import InitE.FrontendStages.Loop.Data576
import InitE.WordStages.Source640
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate560
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate576_eq : InitE.WordFrontendComputation.compileEntry Loop.output576 =
    InitE.WordStages.source640 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate576_eq
end InitE.FrontendStages.Word
