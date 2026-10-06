import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data264
import InitE.WordStages.Source328
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate248
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate264_eq : InitE.WordFrontendComputation.compileEntry Loop.output264 =
    InitE.WordStages.source328 := by
  kernel_rfl
#print axioms translate264_eq
end InitE.FrontendStages.Word
