import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data626
import InitE.WordStages.Source690
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate610
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate626_eq : InitE.WordFrontendComputation.compileEntry Loop.output626 =
    InitE.WordStages.source690 := by
  kernel_rfl
#print axioms translate626_eq
end InitE.FrontendStages.Word
