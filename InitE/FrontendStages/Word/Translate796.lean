import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data796
import InitE.WordStages.Source860
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate780
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate796_eq : InitE.WordFrontendComputation.compileEntry Loop.output796 =
    InitE.WordStages.source860 := by
  kernel_rfl
#print axioms translate796_eq
end InitE.FrontendStages.Word
