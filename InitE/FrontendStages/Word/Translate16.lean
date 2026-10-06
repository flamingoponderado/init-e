import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data16
import InitE.WordStages.Source80
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate0
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate16_eq : InitE.WordFrontendComputation.compileEntry Loop.output16 =
    InitE.WordStages.source80 := by
  kernel_rfl
#print axioms translate16_eq
end InitE.FrontendStages.Word
