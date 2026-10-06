import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data570
import InitE.WordStages.Source634
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate554
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate570_eq : InitE.WordFrontendComputation.compileEntry Loop.output570 =
    InitE.WordStages.source634 := by
  kernel_rfl
#print axioms translate570_eq
end InitE.FrontendStages.Word
