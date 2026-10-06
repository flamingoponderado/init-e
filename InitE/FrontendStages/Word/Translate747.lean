import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data747
import InitE.WordStages.Source811
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate731
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate747_eq : InitE.WordFrontendComputation.compileEntry Loop.output747 =
    InitE.WordStages.source811 := by
  kernel_rfl
#print axioms translate747_eq
end InitE.FrontendStages.Word
