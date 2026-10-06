import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data261
import InitE.WordStages.Source325
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate245
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate261_eq : InitE.WordFrontendComputation.compileEntry Loop.output261 =
    InitE.WordStages.source325 := by
  kernel_rfl
#print axioms translate261_eq
end InitE.FrontendStages.Word
