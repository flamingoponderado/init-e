import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data88
import InitE.WordStages.Source152
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate72
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate88_eq : InitE.WordFrontendComputation.compileEntry Loop.output88 =
    InitE.WordStages.source152 := by
  kernel_rfl
#print axioms translate88_eq
end InitE.FrontendStages.Word
