import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data198
import InitE.WordStages.Source262
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate182
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate198_eq : InitE.WordFrontendComputation.compileEntry Loop.output198 =
    InitE.WordStages.source262 := by
  kernel_rfl
#print axioms translate198_eq
end InitE.FrontendStages.Word
