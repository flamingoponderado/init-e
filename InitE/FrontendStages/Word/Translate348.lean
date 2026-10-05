import InitE.FrontendStages.Loop.Data348
import InitE.WordStages.Source412
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate348_eq : InitE.WordFrontendComputation.compileEntry Loop.output348 =
    InitE.WordStages.source412 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate348_eq
end InitE.FrontendStages.Word
