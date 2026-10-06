import InitE.FrontendStages.Loop.Data712
import InitE.WordStages.Source776
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate696
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate712_eq : InitE.WordFrontendComputation.compileEntry Loop.output712 =
    InitE.WordStages.source776 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate712_eq
end InitE.FrontendStages.Word
