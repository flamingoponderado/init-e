import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data536
import InitE.WordStages.Source600
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate520
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate536_eq : InitE.WordFrontendComputation.compileEntry Loop.output536 =
    InitE.WordStages.source600 := by
  kernel_rfl
#print axioms translate536_eq
end InitE.FrontendStages.Word
