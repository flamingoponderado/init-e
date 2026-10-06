import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data757
import InitE.WordStages.Source821
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate741
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate757_eq : InitE.WordFrontendComputation.compileEntry Loop.output757 =
    InitE.WordStages.source821 := by
  kernel_rfl
#print axioms translate757_eq
end InitE.FrontendStages.Word
