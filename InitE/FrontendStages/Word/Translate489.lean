import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data489
import InitE.WordStages.Source553
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate473
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate489_eq : InitE.WordFrontendComputation.compileEntry Loop.output489 =
    InitE.WordStages.source553 := by
  kernel_rfl
#print axioms translate489_eq
end InitE.FrontendStages.Word
