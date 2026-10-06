import InitE.FrontendStages.Loop.Data102
import InitE.WordStages.Source166
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate86
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate102_eq : InitE.WordFrontendComputation.compileEntry Loop.output102 =
    InitE.WordStages.source166 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate102_eq
end InitE.FrontendStages.Word
