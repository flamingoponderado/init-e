import InitE.FrontendStages.Loop.Data717
import InitE.WordStages.Source781
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate701
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate717_eq : InitE.WordFrontendComputation.compileEntry Loop.output717 =
    InitE.WordStages.source781 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate717_eq
end InitE.FrontendStages.Word
