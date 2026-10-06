import InitE.FrontendStages.Loop.Data27
import InitE.WordStages.Source91
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate11
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate27_eq : InitE.WordFrontendComputation.compileEntry Loop.output27 =
    InitE.WordStages.source91 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate27_eq
end InitE.FrontendStages.Word
