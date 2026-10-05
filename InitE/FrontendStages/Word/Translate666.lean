import InitE.FrontendStages.Loop.Data666
import InitE.WordStages.Source730
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate650
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate666_eq : InitE.WordFrontendComputation.compileEntry Loop.output666 =
    InitE.WordStages.source730 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate666_eq
end InitE.FrontendStages.Word
