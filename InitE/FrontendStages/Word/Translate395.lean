import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data395
import InitE.WordStages.Source459
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate379
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate395_eq : InitE.WordFrontendComputation.compileEntry Loop.output395 =
    InitE.WordStages.source459 := by
  kernel_rfl
#print axioms translate395_eq
end InitE.FrontendStages.Word
