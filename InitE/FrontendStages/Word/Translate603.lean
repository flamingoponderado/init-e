import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data603
import InitE.WordStages.Source667
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate587
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate603_eq : InitE.WordFrontendComputation.compileEntry Loop.output603 =
    InitE.WordStages.source667 := by
  kernel_rfl
#print axioms translate603_eq
end InitE.FrontendStages.Word
