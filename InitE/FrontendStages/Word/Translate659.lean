import InitE.FrontendStages.Loop.Data659
import InitE.WordStages.Source723
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate643
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate659_eq : InitE.WordFrontendComputation.compileEntry Loop.output659 =
    InitE.WordStages.source723 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate659_eq
end InitE.FrontendStages.Word
