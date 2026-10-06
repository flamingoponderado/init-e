import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data682
import InitE.WordStages.Source746
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate666
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate682_eq : InitE.WordFrontendComputation.compileEntry Loop.output682 =
    InitE.WordStages.source746 := by
  kernel_rfl
#print axioms translate682_eq
end InitE.FrontendStages.Word
