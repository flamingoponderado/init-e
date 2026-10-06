import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data528
import InitE.WordStages.Source592
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate512
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate528_eq : InitE.WordFrontendComputation.compileEntry Loop.output528 =
    InitE.WordStages.source592 := by
  kernel_rfl
#print axioms translate528_eq
end InitE.FrontendStages.Word
