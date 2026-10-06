import InitE.FrontendStages.Loop.Data1
import InitE.WordStages.Source65
import InitE.WordFrontendComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate1_eq : InitE.WordFrontendComputation.compileEntry Loop.output1 =
    InitE.WordStages.source65 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate1_eq
end InitE.FrontendStages.Word
