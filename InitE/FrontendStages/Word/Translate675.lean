import InitE.FrontendStages.Loop.Data675
import InitE.WordStages.Source739
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate659
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate675_eq : InitE.WordFrontendComputation.compileEntry Loop.output675 =
    InitE.WordStages.source739 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate675_eq
end InitE.FrontendStages.Word
