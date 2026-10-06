import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data610
import InitE.WordStages.Source674
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate594
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate610_eq : InitE.WordFrontendComputation.compileEntry Loop.output610 =
    InitE.WordStages.source674 := by
  kernel_rfl
#print axioms translate610_eq
end InitE.FrontendStages.Word
