import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data436
import InitE.WordStages.Source500
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate420
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate436_eq : InitE.WordFrontendComputation.compileEntry Loop.output436 =
    InitE.WordStages.source500 := by
  kernel_rfl
#print axioms translate436_eq
end InitE.FrontendStages.Word
