import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data429
import InitE.WordStages.Source493
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate413
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate429_eq : InitE.WordFrontendComputation.compileEntry Loop.output429 =
    InitE.WordStages.source493 := by
  kernel_rfl
#print axioms translate429_eq
end InitE.FrontendStages.Word
