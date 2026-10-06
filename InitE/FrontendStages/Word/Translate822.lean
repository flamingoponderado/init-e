import InitE.FrontendStages.Loop.Data822
import InitE.WordStages.Source886
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate806
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate822_eq : InitE.WordFrontendComputation.compileEntry Loop.output822 =
    InitE.WordStages.source886 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate822_eq
end InitE.FrontendStages.Word
