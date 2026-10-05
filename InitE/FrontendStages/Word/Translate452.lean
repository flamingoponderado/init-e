import InitE.FrontendStages.Loop.Data452
import InitE.WordStages.Source516
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate436
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate452_eq : InitE.WordFrontendComputation.compileEntry Loop.output452 =
    InitE.WordStages.source516 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate452_eq
end InitE.FrontendStages.Word
