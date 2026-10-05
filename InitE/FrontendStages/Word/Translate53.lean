import InitE.FrontendStages.Loop.Data53
import InitE.WordStages.Source117
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate37
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate53_eq : InitE.WordFrontendComputation.compileEntry Loop.output53 =
    InitE.WordStages.source117 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate53_eq
end InitE.FrontendStages.Word
