import InitE.FrontendStages.Loop.Data318
import InitE.WordStages.Source382
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate302
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate318_eq : InitE.WordFrontendComputation.compileEntry Loop.output318 =
    InitE.WordStages.source382 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate318_eq
end InitE.FrontendStages.Word
