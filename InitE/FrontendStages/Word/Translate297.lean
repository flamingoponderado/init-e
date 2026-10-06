import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data297
import InitE.WordStages.Source361
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate281
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate297_eq : InitE.WordFrontendComputation.compileEntry Loop.output297 =
    InitE.WordStages.source361 := by
  kernel_rfl
#print axioms translate297_eq
end InitE.FrontendStages.Word
