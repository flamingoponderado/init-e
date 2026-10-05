import InitE.FrontendStages.Loop.Data204
import InitE.WordStages.Source268
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate204_eq : InitE.WordFrontendComputation.compileEntry Loop.output204 =
    InitE.WordStages.source268 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate204_eq
end InitE.FrontendStages.Word
