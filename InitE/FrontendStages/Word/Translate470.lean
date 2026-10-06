import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data470
import InitE.WordStages.Source534
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate454
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate470_eq : InitE.WordFrontendComputation.compileEntry Loop.output470 =
    InitE.WordStages.source534 := by
  kernel_rfl
#print axioms translate470_eq
end InitE.FrontendStages.Word
