import InitE.FrontendStages.Loop.Data809
import InitE.WordStages.Source873
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate793
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate809_eq : InitE.WordFrontendComputation.compileEntry Loop.output809 =
    InitE.WordStages.source873 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate809_eq
end InitE.FrontendStages.Word
