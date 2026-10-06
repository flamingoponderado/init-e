import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data738
import InitE.WordStages.Source802
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate722
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate738_eq : InitE.WordFrontendComputation.compileEntry Loop.output738 =
    InitE.WordStages.source802 := by
  kernel_rfl
#print axioms translate738_eq
end InitE.FrontendStages.Word
