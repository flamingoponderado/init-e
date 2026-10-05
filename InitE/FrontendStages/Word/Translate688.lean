import InitE.FrontendStages.Loop.Data688
import InitE.WordStages.Source752
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate672
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate688_eq : InitE.WordFrontendComputation.compileEntry Loop.output688 =
    InitE.WordStages.source752 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate688_eq
end InitE.FrontendStages.Word
