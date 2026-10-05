import InitE.FrontendStages.Loop.Data545
import InitE.WordStages.Source609
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate529
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate545_eq : InitE.WordFrontendComputation.compileEntry Loop.output545 =
    InitE.WordStages.source609 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate545_eq
end InitE.FrontendStages.Word
