import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data79
import InitE.WordStages.Source143
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate63
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate79_eq : InitE.WordFrontendComputation.compileEntry Loop.output79 =
    InitE.WordStages.source143 := by
  kernel_rfl
#print axioms translate79_eq
end InitE.FrontendStages.Word
