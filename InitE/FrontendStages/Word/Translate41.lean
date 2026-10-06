import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data41
import InitE.WordStages.Source105
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate25
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate41_eq : InitE.WordFrontendComputation.compileEntry Loop.output41 =
    InitE.WordStages.source105 := by
  kernel_rfl
#print axioms translate41_eq
end InitE.FrontendStages.Word
