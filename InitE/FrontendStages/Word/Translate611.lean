import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data611
import InitE.WordStages.Source675
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate595
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate611_eq : InitE.WordFrontendComputation.compileEntry Loop.output611 =
    InitE.WordStages.source675 := by
  kernel_rfl
#print axioms translate611_eq
end InitE.FrontendStages.Word
