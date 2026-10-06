import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data340
import InitE.WordStages.Source404
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate324
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate340_eq : InitE.WordFrontendComputation.compileEntry Loop.output340 =
    InitE.WordStages.source404 := by
  kernel_rfl
#print axioms translate340_eq
end InitE.FrontendStages.Word
