import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data312
import InitE.WordStages.Source376
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate296
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate312_eq : InitE.WordFrontendComputation.compileEntry Loop.output312 =
    InitE.WordStages.source376 := by
  kernel_rfl
#print axioms translate312_eq
end InitE.FrontendStages.Word
