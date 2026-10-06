import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data688
import InitE.WordStages.Source752
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate672
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate688_eq : InitE.WordFrontendComputation.compileEntry Loop.output688 =
    InitE.WordStages.source752 := by
  kernel_rfl
#print axioms translate688_eq
end InitE.FrontendStages.Word
