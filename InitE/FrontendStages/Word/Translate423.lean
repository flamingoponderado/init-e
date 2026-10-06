import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data423
import InitE.WordStages.Source487
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate407
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate423_eq : InitE.WordFrontendComputation.compileEntry Loop.output423 =
    InitE.WordStages.source487 := by
  kernel_rfl
#print axioms translate423_eq
end InitE.FrontendStages.Word
