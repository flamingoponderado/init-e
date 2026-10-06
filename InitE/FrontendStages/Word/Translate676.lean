import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data676
import InitE.WordStages.Source740
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate660
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate676_eq : InitE.WordFrontendComputation.compileEntry Loop.output676 =
    InitE.WordStages.source740 := by
  kernel_rfl
#print axioms translate676_eq
end InitE.FrontendStages.Word
