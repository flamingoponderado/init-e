import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data23
import InitE.WordStages.Source87
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate7
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate23_eq : InitE.WordFrontendComputation.compileEntry Loop.output23 =
    InitE.WordStages.source87 := by
  kernel_rfl
#print axioms translate23_eq
end InitE.FrontendStages.Word
