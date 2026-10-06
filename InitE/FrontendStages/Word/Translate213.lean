import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data213
import InitE.WordStages.Source277
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate197
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate213_eq : InitE.WordFrontendComputation.compileEntry Loop.output213 =
    InitE.WordStages.source277 := by
  kernel_rfl
#print axioms translate213_eq
end InitE.FrontendStages.Word
