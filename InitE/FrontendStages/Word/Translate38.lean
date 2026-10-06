import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data38
import InitE.WordStages.Source102
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate22
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate38_eq : InitE.WordFrontendComputation.compileEntry Loop.output38 =
    InitE.WordStages.source102 := by
  kernel_rfl
#print axioms translate38_eq
end InitE.FrontendStages.Word
