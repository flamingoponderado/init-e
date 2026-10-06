import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data304
import InitE.WordStages.Source368
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate288
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate304_eq : InitE.WordFrontendComputation.compileEntry Loop.output304 =
    InitE.WordStages.source368 := by
  kernel_rfl
#print axioms translate304_eq
end InitE.FrontendStages.Word
