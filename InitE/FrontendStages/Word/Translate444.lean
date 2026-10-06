import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data444
import InitE.WordStages.Source508
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate428
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate444_eq : InitE.WordFrontendComputation.compileEntry Loop.output444 =
    InitE.WordStages.source508 := by
  kernel_rfl
#print axioms translate444_eq
end InitE.FrontendStages.Word
