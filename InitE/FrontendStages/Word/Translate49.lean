import InitE.FrontendStages.Loop.Data49
import InitE.WordStages.Source113
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate33
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate49_eq : InitE.WordFrontendComputation.compileEntry Loop.output49 =
    InitE.WordStages.source113 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate49_eq
end InitE.FrontendStages.Word
