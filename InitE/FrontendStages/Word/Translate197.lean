import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data197
import InitE.WordStages.Source261
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate197_eq : InitE.WordFrontendComputation.compileEntry Loop.output197 =
    InitE.WordStages.source261 := by
  kernel_rfl
#print axioms translate197_eq
end InitE.FrontendStages.Word
