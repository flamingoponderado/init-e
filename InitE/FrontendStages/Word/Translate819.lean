import InitE.FrontendStages.Loop.Data819
import InitE.WordStages.Source883
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate803
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate819_eq : InitE.WordFrontendComputation.compileEntry Loop.output819 =
    InitE.WordStages.source883 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate819_eq
end InitE.FrontendStages.Word
