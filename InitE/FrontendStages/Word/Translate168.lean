import InitE.FrontendStages.Loop.Data168
import InitE.WordStages.Source232
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate152
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate168_eq : InitE.WordFrontendComputation.compileEntry Loop.output168 =
    InitE.WordStages.source232 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate168_eq
end InitE.FrontendStages.Word
