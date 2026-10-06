import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data532
import InitE.WordStages.Source596
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate516
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate532_eq : InitE.WordFrontendComputation.compileEntry Loop.output532 =
    InitE.WordStages.source596 := by
  kernel_rfl
#print axioms translate532_eq
end InitE.FrontendStages.Word
