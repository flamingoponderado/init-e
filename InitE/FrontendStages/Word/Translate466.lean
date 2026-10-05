import InitE.FrontendStages.Loop.Data466
import InitE.WordStages.Source530
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate450
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate466_eq : InitE.WordFrontendComputation.compileEntry Loop.output466 =
    InitE.WordStages.source530 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate466_eq
end InitE.FrontendStages.Word
