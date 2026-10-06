import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data571
import InitE.WordStages.Source635
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate555
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate571_eq : InitE.WordFrontendComputation.compileEntry Loop.output571 =
    InitE.WordStages.source635 := by
  kernel_rfl
#print axioms translate571_eq
end InitE.FrontendStages.Word
