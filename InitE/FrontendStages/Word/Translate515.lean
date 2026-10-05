import InitE.FrontendStages.Loop.Data515
import InitE.WordStages.Source579
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate499
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate515_eq : InitE.WordFrontendComputation.compileEntry Loop.output515 =
    InitE.WordStages.source579 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate515_eq
end InitE.FrontendStages.Word
