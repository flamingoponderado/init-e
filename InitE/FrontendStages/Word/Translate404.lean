import InitE.FrontendStages.Loop.Data404
import InitE.WordStages.Source468
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate388
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate404_eq : InitE.WordFrontendComputation.compileEntry Loop.output404 =
    InitE.WordStages.source468 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate404_eq
end InitE.FrontendStages.Word
