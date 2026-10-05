import InitE.FrontendStages.Loop.Data117
import InitE.WordStages.Source181
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate101
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate117_eq : InitE.WordFrontendComputation.compileEntry Loop.output117 =
    InitE.WordStages.source181 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate117_eq
end InitE.FrontendStages.Word
