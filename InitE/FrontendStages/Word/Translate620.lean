import InitE.FrontendStages.Loop.Data620
import InitE.WordStages.Source684
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate604
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate620_eq : InitE.WordFrontendComputation.compileEntry Loop.output620 =
    InitE.WordStages.source684 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate620_eq
end InitE.FrontendStages.Word
