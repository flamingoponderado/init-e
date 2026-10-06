import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data555
import InitE.WordStages.Source619
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate539
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate555_eq : InitE.WordFrontendComputation.compileEntry Loop.output555 =
    InitE.WordStages.source619 := by
  kernel_rfl
#print axioms translate555_eq
end InitE.FrontendStages.Word
