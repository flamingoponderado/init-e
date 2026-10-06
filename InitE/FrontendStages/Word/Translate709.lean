import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data709
import InitE.WordStages.Source773
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate693
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate709_eq : InitE.WordFrontendComputation.compileEntry Loop.output709 =
    InitE.WordStages.source773 := by
  kernel_rfl
#print axioms translate709_eq
end InitE.FrontendStages.Word
