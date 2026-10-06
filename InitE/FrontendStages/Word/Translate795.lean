import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data795
import InitE.WordStages.Source859
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate779
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate795_eq : InitE.WordFrontendComputation.compileEntry Loop.output795 =
    InitE.WordStages.source859 := by
  kernel_rfl
#print axioms translate795_eq
end InitE.FrontendStages.Word
