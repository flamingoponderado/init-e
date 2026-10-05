import InitE.FrontendStages.Loop.Data606
import InitE.WordStages.Source670
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate590
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate606_eq : InitE.WordFrontendComputation.compileEntry Loop.output606 =
    InitE.WordStages.source670 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate606_eq
end InitE.FrontendStages.Word
