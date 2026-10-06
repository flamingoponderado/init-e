import InitE.FrontendStages.Loop.Data45
import InitE.WordStages.Source109
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate29
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate45_eq : InitE.WordFrontendComputation.compileEntry Loop.output45 =
    InitE.WordStages.source109 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate45_eq
end InitE.FrontendStages.Word
