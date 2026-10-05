import InitE.FrontendStages.Loop.Data305
import InitE.WordStages.Source369
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate289
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate305_eq : InitE.WordFrontendComputation.compileEntry Loop.output305 =
    InitE.WordStages.source369 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate305_eq
end InitE.FrontendStages.Word
