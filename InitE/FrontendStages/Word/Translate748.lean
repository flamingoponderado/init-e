import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data748
import InitE.WordStages.Source812
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate732
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate748_eq : InitE.WordFrontendComputation.compileEntry Loop.output748 =
    InitE.WordStages.source812 := by
  kernel_rfl
#print axioms translate748_eq
end InitE.FrontendStages.Word
