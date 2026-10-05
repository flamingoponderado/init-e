import InitE.FrontendStages.Loop.Data293
import InitE.WordStages.Source357
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate293_eq : InitE.WordFrontendComputation.compileEntry Loop.output293 =
    InitE.WordStages.source357 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate293_eq
end InitE.FrontendStages.Word
