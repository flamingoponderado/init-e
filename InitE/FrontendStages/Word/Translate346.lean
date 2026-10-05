import InitE.FrontendStages.Loop.Data346
import InitE.WordStages.Source410
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate330
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate346_eq : InitE.WordFrontendComputation.compileEntry Loop.output346 =
    InitE.WordStages.source410 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate346_eq
end InitE.FrontendStages.Word
