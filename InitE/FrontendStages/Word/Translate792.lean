import InitE.FrontendStages.Loop.Data792
import InitE.WordStages.Source856
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate776
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate792_eq : InitE.WordFrontendComputation.compileEntry Loop.output792 =
    InitE.WordStages.source856 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate792_eq
end InitE.FrontendStages.Word
