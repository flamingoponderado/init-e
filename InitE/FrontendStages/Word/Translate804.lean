import InitE.FrontendStages.Loop.Data804
import InitE.WordStages.Source868
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate788
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate804_eq : InitE.WordFrontendComputation.compileEntry Loop.output804 =
    InitE.WordStages.source868 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate804_eq
end InitE.FrontendStages.Word
