import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data653
import InitE.WordStages.Source717
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate637
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate653_eq : InitE.WordFrontendComputation.compileEntry Loop.output653 =
    InitE.WordStages.source717 := by
  kernel_rfl
#print axioms translate653_eq
end InitE.FrontendStages.Word
