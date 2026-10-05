import InitE.FrontendStages.Loop.Data275
import InitE.WordStages.Source339
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate259
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate275_eq : InitE.WordFrontendComputation.compileEntry Loop.output275 =
    InitE.WordStages.source339 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate275_eq
end InitE.FrontendStages.Word
