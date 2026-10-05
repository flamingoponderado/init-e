import InitE.FrontendStages.Loop.Data217
import InitE.WordStages.Source281
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate201
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate217_eq : InitE.WordFrontendComputation.compileEntry Loop.output217 =
    InitE.WordStages.source281 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate217_eq
end InitE.FrontendStages.Word
