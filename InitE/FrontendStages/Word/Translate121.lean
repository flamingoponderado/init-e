import InitE.FrontendStages.Loop.Data121
import InitE.WordStages.Source185
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate105
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate121_eq : InitE.WordFrontendComputation.compileEntry Loop.output121 =
    InitE.WordStages.source185 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate121_eq
end InitE.FrontendStages.Word
