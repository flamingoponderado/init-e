import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data540
import InitE.WordStages.Source604
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate524
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate540_eq : InitE.WordFrontendComputation.compileEntry Loop.output540 =
    InitE.WordStages.source604 := by
  kernel_rfl
#print axioms translate540_eq
end InitE.FrontendStages.Word
