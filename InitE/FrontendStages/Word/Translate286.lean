import InitE.FrontendStages.Loop.Data286
import InitE.WordStages.Source350
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate270
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate286_eq : InitE.WordFrontendComputation.compileEntry Loop.output286 =
    InitE.WordStages.source350 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate286_eq
end InitE.FrontendStages.Word
