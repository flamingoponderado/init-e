import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data526
import InitE.WordStages.Source590
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate510
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate526_eq : InitE.WordFrontendComputation.compileEntry Loop.output526 =
    InitE.WordStages.source590 := by
  kernel_rfl
#print axioms translate526_eq
end InitE.FrontendStages.Word
