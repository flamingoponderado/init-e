import InitE.FrontendStages.Loop.Data379
import InitE.WordStages.Source443
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate363
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate379_eq : InitE.WordFrontendComputation.compileEntry Loop.output379 =
    InitE.WordStages.source443 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate379_eq
end InitE.FrontendStages.Word
