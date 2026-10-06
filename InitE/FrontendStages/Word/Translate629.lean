import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data629
import InitE.WordStages.Source693
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate613
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate629_eq : InitE.WordFrontendComputation.compileEntry Loop.output629 =
    InitE.WordStages.source693 := by
  kernel_rfl
#print axioms translate629_eq
end InitE.FrontendStages.Word
