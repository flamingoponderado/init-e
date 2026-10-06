import InitE.FrontendStages.Loop.Data382
import InitE.WordStages.Source446
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate366
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate382_eq : InitE.WordFrontendComputation.compileEntry Loop.output382 =
    InitE.WordStages.source446 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate382_eq
end InitE.FrontendStages.Word
