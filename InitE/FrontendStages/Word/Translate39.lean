import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data39
import InitE.WordStages.Source103
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate23
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate39_eq : InitE.WordFrontendComputation.compileEntry Loop.output39 =
    InitE.WordStages.source103 := by
  kernel_rfl
#print axioms translate39_eq
end InitE.FrontendStages.Word
