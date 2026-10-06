import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data324
import InitE.WordStages.Source388
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate308
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate324_eq : InitE.WordFrontendComputation.compileEntry Loop.output324 =
    InitE.WordStages.source388 := by
  kernel_rfl
#print axioms translate324_eq
end InitE.FrontendStages.Word
