import InitE.FrontendStages.Loop.Data631
import InitE.WordStages.Source695
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate615
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate631_eq : InitE.WordFrontendComputation.compileEntry Loop.output631 =
    InitE.WordStages.source695 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate631_eq
end InitE.FrontendStages.Word
