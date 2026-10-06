import InitE.FrontendStages.Loop.Data52
import InitE.WordStages.Source116
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate36
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate52_eq : InitE.WordFrontendComputation.compileEntry Loop.output52 =
    InitE.WordStages.source116 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate52_eq
end InitE.FrontendStages.Word
