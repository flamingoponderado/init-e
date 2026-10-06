import InitE.FrontendStages.Loop.Data290
import InitE.WordStages.Source354
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate274
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate290_eq : InitE.WordFrontendComputation.compileEntry Loop.output290 =
    InitE.WordStages.source354 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate290_eq
end InitE.FrontendStages.Word
