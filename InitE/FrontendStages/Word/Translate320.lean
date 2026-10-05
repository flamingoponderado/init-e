import InitE.FrontendStages.Loop.Data320
import InitE.WordStages.Source384
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate304
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitE.FrontendStages.Word
theorem translate320_eq : InitE.WordFrontendComputation.compileEntry Loop.output320 =
    InitE.WordStages.source384 := by
  conv => lhs; cbv
  try (conv => rhs; cbv)
  try rfl
#print axioms translate320_eq
end InitE.FrontendStages.Word
