import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data762
import InitE.WordStages.Source826
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate746
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate762_eq : InitE.WordFrontendComputation.compileEntry Loop.output762 =
    InitE.WordStages.source826 := by
  kernel_rfl
#print axioms translate762_eq
end InitE.FrontendStages.Word
