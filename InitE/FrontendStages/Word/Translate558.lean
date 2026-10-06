import InitE.FrontendStages.Loop.Data558
import InitE.WordStages.Source622
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate542
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate558_eq : InitE.WordFrontendComputation.compileEntry Loop.output558 =
    InitE.WordStages.source622 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate558_eq
end InitE.FrontendStages.Word
