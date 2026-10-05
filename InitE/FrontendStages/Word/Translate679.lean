import InitE.FrontendStages.Loop.Data679
import InitE.WordStages.Source743
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate663
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate679_eq : InitE.WordFrontendComputation.compileEntry Loop.output679 =
    InitE.WordStages.source743 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate679_eq
end InitE.FrontendStages.Word
