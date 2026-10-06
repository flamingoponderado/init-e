import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data696
import InitE.WordStages.Source760
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate680
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate696_eq : InitE.WordFrontendComputation.compileEntry Loop.output696 =
    InitE.WordStages.source760 := by
  kernel_rfl
#print axioms translate696_eq
end InitE.FrontendStages.Word
