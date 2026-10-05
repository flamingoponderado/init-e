import InitE.FrontendStages.Loop.Data734
import InitE.WordStages.Source798
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate718
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate734_eq : InitE.WordFrontendComputation.compileEntry Loop.output734 =
    InitE.WordStages.source798 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate734_eq
end InitE.FrontendStages.Word
