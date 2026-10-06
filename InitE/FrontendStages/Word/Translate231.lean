import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data231
import InitE.WordStages.Source295
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate215
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate231_eq : InitE.WordFrontendComputation.compileEntry Loop.output231 =
    InitE.WordStages.source295 := by
  kernel_rfl
#print axioms translate231_eq
end InitE.FrontendStages.Word
