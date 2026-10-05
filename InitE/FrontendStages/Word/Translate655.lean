import InitE.FrontendStages.Loop.Data655
import InitE.WordStages.Source719
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate639
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate655_eq : InitE.WordFrontendComputation.compileEntry Loop.output655 =
    InitE.WordStages.source719 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate655_eq
end InitE.FrontendStages.Word
