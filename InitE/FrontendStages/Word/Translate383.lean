import InitE.FrontendStages.Loop.Data383
import InitE.WordStages.Source447
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate367
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate383_eq : InitE.WordFrontendComputation.compileEntry Loop.output383 =
    InitE.WordStages.source447 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate383_eq
end InitE.FrontendStages.Word
