import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data451
import InitE.WordStages.Source515
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate435
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate451_eq : InitE.WordFrontendComputation.compileEntry Loop.output451 =
    InitE.WordStages.source515 := by
  kernel_rfl
#print axioms translate451_eq
end InitE.FrontendStages.Word
