import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data715
import InitE.WordStages.Source779
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate699
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate715_eq : InitE.WordFrontendComputation.compileEntry Loop.output715 =
    InitE.WordStages.source779 := by
  kernel_rfl
#print axioms translate715_eq
end InitE.FrontendStages.Word
