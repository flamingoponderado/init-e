import InitE.FrontendStages.Loop.Data70
import InitE.WordStages.Source134
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate54
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate70_eq : InitE.WordFrontendComputation.compileEntry Loop.output70 =
    InitE.WordStages.source134 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate70_eq
end InitE.FrontendStages.Word
