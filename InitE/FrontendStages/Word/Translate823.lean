import InitE.FrontendStages.Loop.Data823
import InitE.WordStages.Source887
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate807
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate823_eq : InitE.WordFrontendComputation.compileEntry Loop.output823 =
    InitE.WordStages.source887 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate823_eq
end InitE.FrontendStages.Word
