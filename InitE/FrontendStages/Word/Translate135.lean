import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data135
import InitE.WordStages.Source199
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate119
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate135_eq : InitE.WordFrontendComputation.compileEntry Loop.output135 =
    InitE.WordStages.source199 := by
  kernel_rfl
#print axioms translate135_eq
end InitE.FrontendStages.Word
