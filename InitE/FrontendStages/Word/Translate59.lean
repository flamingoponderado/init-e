import InitE.FrontendStages.Loop.Data59
import InitE.WordStages.Source123
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate43
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate59_eq : InitE.WordFrontendComputation.compileEntry Loop.output59 =
    InitE.WordStages.source123 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate59_eq
end InitE.FrontendStages.Word
