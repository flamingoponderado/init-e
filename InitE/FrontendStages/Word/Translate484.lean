import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data484
import InitE.WordStages.Source548
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate468
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate484_eq : InitE.WordFrontendComputation.compileEntry Loop.output484 =
    InitE.WordStages.source548 := by
  kernel_rfl
#print axioms translate484_eq
end InitE.FrontendStages.Word
