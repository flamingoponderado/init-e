import InitE.FrontendStages.Loop.Data808
import InitE.WordStages.Source872
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate792
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate808_eq : InitE.WordFrontendComputation.compileEntry Loop.output808 =
    InitE.WordStages.source872 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate808_eq
end InitE.FrontendStages.Word
