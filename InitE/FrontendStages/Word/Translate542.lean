import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data542
import InitE.WordStages.Source606
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate526
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate542_eq : InitE.WordFrontendComputation.compileEntry Loop.output542 =
    InitE.WordStages.source606 := by
  kernel_rfl
#print axioms translate542_eq
end InitE.FrontendStages.Word
