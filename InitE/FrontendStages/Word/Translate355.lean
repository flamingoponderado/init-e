import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data355
import InitE.WordStages.Source419
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate339
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate355_eq : InitE.WordFrontendComputation.compileEntry Loop.output355 =
    InitE.WordStages.source419 := by
  kernel_rfl
#print axioms translate355_eq
end InitE.FrontendStages.Word
