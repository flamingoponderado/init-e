import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data756
import InitE.WordStages.Source820
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate740
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate756_eq : InitE.WordFrontendComputation.compileEntry Loop.output756 =
    InitE.WordStages.source820 := by
  kernel_rfl
#print axioms translate756_eq
end InitE.FrontendStages.Word
