import InitE.FrontendStages.Loop.Data728
import InitE.WordStages.Source792
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate712
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate728_eq : InitE.WordFrontendComputation.compileEntry Loop.output728 =
    InitE.WordStages.source792 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate728_eq
end InitE.FrontendStages.Word
