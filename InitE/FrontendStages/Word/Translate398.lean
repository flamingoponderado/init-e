import InitE.FrontendStages.Loop.Data398
import InitE.WordStages.Source462
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate382
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate398_eq : InitE.WordFrontendComputation.compileEntry Loop.output398 =
    InitE.WordStages.source462 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate398_eq
end InitE.FrontendStages.Word
