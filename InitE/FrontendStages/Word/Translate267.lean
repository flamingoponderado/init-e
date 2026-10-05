import InitE.FrontendStages.Loop.Data267
import InitE.WordStages.Source331
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate251
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate267_eq : InitE.WordFrontendComputation.compileEntry Loop.output267 =
    InitE.WordStages.source331 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate267_eq
end InitE.FrontendStages.Word
