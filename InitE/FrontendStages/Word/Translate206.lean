import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data206
import InitE.WordStages.Source270
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate190
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate206_eq : InitE.WordFrontendComputation.compileEntry Loop.output206 =
    InitE.WordStages.source270 := by
  kernel_rfl
#print axioms translate206_eq
end InitE.FrontendStages.Word
