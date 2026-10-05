import InitE.FrontendStages.Loop.Data517
import InitE.WordStages.Source581
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate501
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate517_eq : InitE.WordFrontendComputation.compileEntry Loop.output517 =
    InitE.WordStages.source581 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate517_eq
end InitE.FrontendStages.Word
