import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data330
import InitE.WordStages.Source394
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate314
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate330_eq : InitE.WordFrontendComputation.compileEntry Loop.output330 =
    InitE.WordStages.source394 := by
  kernel_rfl
#print axioms translate330_eq
end InitE.FrontendStages.Word
