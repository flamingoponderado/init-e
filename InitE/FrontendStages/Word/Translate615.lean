import InitE.FrontendStages.Loop.Data615
import InitE.WordStages.Source679
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate599
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate615_eq : InitE.WordFrontendComputation.compileEntry Loop.output615 =
    InitE.WordStages.source679 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate615_eq
end InitE.FrontendStages.Word
