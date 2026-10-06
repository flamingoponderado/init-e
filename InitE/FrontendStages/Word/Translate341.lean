import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data341
import InitE.WordStages.Source405
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate325
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate341_eq : InitE.WordFrontendComputation.compileEntry Loop.output341 =
    InitE.WordStages.source405 := by
  kernel_rfl
#print axioms translate341_eq
end InitE.FrontendStages.Word
