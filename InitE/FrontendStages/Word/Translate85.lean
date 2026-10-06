import InitE.FrontendStages.Loop.Data85
import InitE.WordStages.Source149
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate69
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate85_eq : InitE.WordFrontendComputation.compileEntry Loop.output85 =
    InitE.WordStages.source149 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate85_eq
end InitE.FrontendStages.Word
