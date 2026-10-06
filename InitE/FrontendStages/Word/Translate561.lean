import InitE.FrontendStages.Loop.Data561
import InitE.WordStages.Source625
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate545
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate561_eq : InitE.WordFrontendComputation.compileEntry Loop.output561 =
    InitE.WordStages.source625 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate561_eq
end InitE.FrontendStages.Word
