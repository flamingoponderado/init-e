import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data181
import InitE.WordStages.Source245
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate165
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate181_eq : InitE.WordFrontendComputation.compileEntry Loop.output181 =
    InitE.WordStages.source245 := by
  kernel_rfl
#print axioms translate181_eq
end InitE.FrontendStages.Word
