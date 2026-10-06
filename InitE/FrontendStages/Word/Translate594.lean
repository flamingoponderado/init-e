import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data594
import InitE.WordStages.Source658
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate578
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate594_eq : InitE.WordFrontendComputation.compileEntry Loop.output594 =
    InitE.WordStages.source658 := by
  kernel_rfl
#print axioms translate594_eq
end InitE.FrontendStages.Word
