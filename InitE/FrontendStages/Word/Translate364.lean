import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data364
import InitE.WordStages.Source428
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate348
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate364_eq : InitE.WordFrontendComputation.compileEntry Loop.output364 =
    InitE.WordStages.source428 := by
  kernel_rfl
#print axioms translate364_eq
end InitE.FrontendStages.Word
