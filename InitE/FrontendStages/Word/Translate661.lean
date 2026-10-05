import InitE.FrontendStages.Loop.Data661
import InitE.WordStages.Source725
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate645
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate661_eq : InitE.WordFrontendComputation.compileEntry Loop.output661 =
    InitE.WordStages.source725 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate661_eq
end InitE.FrontendStages.Word
