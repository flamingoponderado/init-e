import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data334
import InitE.WordStages.Source398
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate318
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate334_eq : InitE.WordFrontendComputation.compileEntry Loop.output334 =
    InitE.WordStages.source398 := by
  kernel_rfl
#print axioms translate334_eq
end InitE.FrontendStages.Word
