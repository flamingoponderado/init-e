import InitE.FrontendStages.Loop.Data608
import InitE.WordStages.Source672
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate592
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate608_eq : InitE.WordFrontendComputation.compileEntry Loop.output608 =
    InitE.WordStages.source672 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate608_eq
end InitE.FrontendStages.Word
