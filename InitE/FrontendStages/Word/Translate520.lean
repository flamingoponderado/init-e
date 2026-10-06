import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data520
import InitE.WordStages.Source584
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate504
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate520_eq : InitE.WordFrontendComputation.compileEntry Loop.output520 =
    InitE.WordStages.source584 := by
  kernel_rfl
#print axioms translate520_eq
end InitE.FrontendStages.Word
