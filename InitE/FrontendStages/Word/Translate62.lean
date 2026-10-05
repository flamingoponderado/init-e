import InitE.FrontendStages.Loop.Data62
import InitE.WordStages.Source126
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate46
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate62_eq : InitE.WordFrontendComputation.compileEntry Loop.output62 =
    InitE.WordStages.source126 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate62_eq
end InitE.FrontendStages.Word
