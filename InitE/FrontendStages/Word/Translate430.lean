import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data430
import InitE.WordStages.Source494
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate430_eq : InitE.WordFrontendComputation.compileEntry Loop.output430 =
    InitE.WordStages.source494 := by
  kernel_rfl
#print axioms translate430_eq
end InitE.FrontendStages.Word
