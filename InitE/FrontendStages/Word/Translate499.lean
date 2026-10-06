import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data499
import InitE.WordStages.Source563
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate483
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate499_eq : InitE.WordFrontendComputation.compileEntry Loop.output499 =
    InitE.WordStages.source563 := by
  kernel_rfl
#print axioms translate499_eq
end InitE.FrontendStages.Word
