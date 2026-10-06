import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data377
import InitE.WordStages.Source441
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate377_eq : InitE.WordFrontendComputation.compileEntry Loop.output377 =
    InitE.WordStages.source441 := by
  kernel_rfl
#print axioms translate377_eq
end InitE.FrontendStages.Word
