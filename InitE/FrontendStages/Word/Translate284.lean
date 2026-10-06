import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data284
import InitE.WordStages.Source348
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate268
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate284_eq : InitE.WordFrontendComputation.compileEntry Loop.output284 =
    InitE.WordStages.source348 := by
  kernel_rfl
#print axioms translate284_eq
end InitE.FrontendStages.Word
