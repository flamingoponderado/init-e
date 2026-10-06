import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data268
import InitE.WordStages.Source332
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate252
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate268_eq : InitE.WordFrontendComputation.compileEntry Loop.output268 =
    InitE.WordStages.source332 := by
  kernel_rfl
#print axioms translate268_eq
end InitE.FrontendStages.Word
