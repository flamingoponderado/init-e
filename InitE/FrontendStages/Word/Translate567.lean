import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data567
import InitE.WordStages.Source631
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate567_eq : InitE.WordFrontendComputation.compileEntry Loop.output567 =
    InitE.WordStages.source631 := by
  kernel_rfl
#print axioms translate567_eq
end InitE.FrontendStages.Word
