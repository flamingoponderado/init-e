import InitE.FrontendStages.Loop.Data685
import InitE.WordStages.Source749
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate669
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate685_eq : InitE.WordFrontendComputation.compileEntry Loop.output685 =
    InitE.WordStages.source749 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate685_eq
end InitE.FrontendStages.Word
