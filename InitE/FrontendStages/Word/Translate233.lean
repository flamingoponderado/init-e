import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data233
import InitE.WordStages.Source297
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate217
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate233_eq : InitE.WordFrontendComputation.compileEntry Loop.output233 =
    InitE.WordStages.source297 := by
  kernel_rfl
#print axioms translate233_eq
end InitE.FrontendStages.Word
