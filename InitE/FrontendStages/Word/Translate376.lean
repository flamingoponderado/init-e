import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data376
import InitE.WordStages.Source440
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate360
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate376_eq : InitE.WordFrontendComputation.compileEntry Loop.output376 =
    InitE.WordStages.source440 := by
  kernel_rfl
#print axioms translate376_eq
end InitE.FrontendStages.Word
