import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data538
import InitE.WordStages.Source602
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate522
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate538_eq : InitE.WordFrontendComputation.compileEntry Loop.output538 =
    InitE.WordStages.source602 := by
  kernel_rfl
#print axioms translate538_eq
end InitE.FrontendStages.Word
