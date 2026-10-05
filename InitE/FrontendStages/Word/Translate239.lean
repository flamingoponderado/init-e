import InitE.FrontendStages.Loop.Data239
import InitE.WordStages.Source303
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate223
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate239_eq : InitE.WordFrontendComputation.compileEntry Loop.output239 =
    InitE.WordStages.source303 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate239_eq
end InitE.FrontendStages.Word
