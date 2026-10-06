import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data292
import InitE.WordStages.Source356
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate276
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate292_eq : InitE.WordFrontendComputation.compileEntry Loop.output292 =
    InitE.WordStages.source356 := by
  kernel_rfl
#print axioms translate292_eq
end InitE.FrontendStages.Word
