import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data577
import InitE.WordStages.Source641
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate561
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate577_eq : InitE.WordFrontendComputation.compileEntry Loop.output577 =
    InitE.WordStages.source641 := by
  kernel_rfl
#print axioms translate577_eq
end InitE.FrontendStages.Word
