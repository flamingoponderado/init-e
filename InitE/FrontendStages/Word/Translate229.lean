import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data229
import InitE.WordStages.Source293
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate213
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate229_eq : InitE.WordFrontendComputation.compileEntry Loop.output229 =
    InitE.WordStages.source293 := by
  kernel_rfl
#print axioms translate229_eq
end InitE.FrontendStages.Word
