import InitE.FrontendStages.Loop.Data334
import InitE.WordStages.Source398
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate318
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate334_eq : InitE.WordFrontendComputation.compileEntry Loop.output334 =
    InitE.WordStages.source398 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate334_eq
end InitE.FrontendStages.Word
