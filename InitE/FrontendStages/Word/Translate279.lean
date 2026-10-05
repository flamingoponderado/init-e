import InitE.FrontendStages.Loop.Data279
import InitE.WordStages.Source343
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate263
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate279_eq : InitE.WordFrontendComputation.compileEntry Loop.output279 =
    InitE.WordStages.source343 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate279_eq
end InitE.FrontendStages.Word
