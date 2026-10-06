import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data496
import InitE.WordStages.Source560
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate496_eq : InitE.WordFrontendComputation.compileEntry Loop.output496 =
    InitE.WordStages.source560 := by
  kernel_rfl
#print axioms translate496_eq
end InitE.FrontendStages.Word
