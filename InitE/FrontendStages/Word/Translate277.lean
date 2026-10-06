import InitE.FrontendStages.Loop.Data277
import InitE.WordStages.Source341
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate261
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate277_eq : InitE.WordFrontendComputation.compileEntry Loop.output277 =
    InitE.WordStages.source341 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate277_eq
end InitE.FrontendStages.Word
