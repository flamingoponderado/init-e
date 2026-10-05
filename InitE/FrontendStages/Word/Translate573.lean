import InitE.FrontendStages.Loop.Data573
import InitE.WordStages.Source637
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate557
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate573_eq : InitE.WordFrontendComputation.compileEntry Loop.output573 =
    InitE.WordStages.source637 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate573_eq
end InitE.FrontendStages.Word
