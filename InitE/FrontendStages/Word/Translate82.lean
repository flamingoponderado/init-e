import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data82
import InitE.WordStages.Source146
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate66
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate82_eq : InitE.WordFrontendComputation.compileEntry Loop.output82 =
    InitE.WordStages.source146 := by
  kernel_rfl
#print axioms translate82_eq
end InitE.FrontendStages.Word
