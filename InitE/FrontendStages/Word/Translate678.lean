import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data678
import InitE.WordStages.Source742
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate662
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate678_eq : InitE.WordFrontendComputation.compileEntry Loop.output678 =
    InitE.WordStages.source742 := by
  kernel_rfl
#print axioms translate678_eq
end InitE.FrontendStages.Word
