import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data733
import InitE.WordStages.Source797
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate717
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate733_eq : InitE.WordFrontendComputation.compileEntry Loop.output733 =
    InitE.WordStages.source797 := by
  kernel_rfl
#print axioms translate733_eq
end InitE.FrontendStages.Word
