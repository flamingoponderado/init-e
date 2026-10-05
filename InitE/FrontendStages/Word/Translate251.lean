import InitE.FrontendStages.Loop.Data251
import InitE.WordStages.Source315
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate235
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate251_eq : InitE.WordFrontendComputation.compileEntry Loop.output251 =
    InitE.WordStages.source315 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate251_eq
end InitE.FrontendStages.Word
