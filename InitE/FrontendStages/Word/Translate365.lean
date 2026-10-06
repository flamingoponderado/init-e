import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data365
import InitE.WordStages.Source429
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate349
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate365_eq : InitE.WordFrontendComputation.compileEntry Loop.output365 =
    InitE.WordStages.source429 := by
  kernel_rfl
#print axioms translate365_eq
end InitE.FrontendStages.Word
