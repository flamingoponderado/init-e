import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data465
import InitE.WordStages.Source529
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate449
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate465_eq : InitE.WordFrontendComputation.compileEntry Loop.output465 =
    InitE.WordStages.source529 := by
  kernel_rfl
#print axioms translate465_eq
end InitE.FrontendStages.Word
