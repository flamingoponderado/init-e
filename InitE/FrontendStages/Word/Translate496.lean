import InitE.FrontendStages.Loop.Data496
import InitE.WordStages.Source560
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate496_eq : InitE.WordFrontendComputation.compileEntry Loop.output496 =
    InitE.WordStages.source560 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate496_eq
end InitE.FrontendStages.Word
