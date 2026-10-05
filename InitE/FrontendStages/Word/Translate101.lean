import InitE.FrontendStages.Loop.Data101
import InitE.WordStages.Source165
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate85
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate101_eq : InitE.WordFrontendComputation.compileEntry Loop.output101 =
    InitE.WordStages.source165 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate101_eq
end InitE.FrontendStages.Word
