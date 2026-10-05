import InitE.FrontendStages.Loop.Data344
import InitE.WordStages.Source408
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate328
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate344_eq : InitE.WordFrontendComputation.compileEntry Loop.output344 =
    InitE.WordStages.source408 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate344_eq
end InitE.FrontendStages.Word
