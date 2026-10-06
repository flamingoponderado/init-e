import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data94
import InitE.WordStages.Source158
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate78
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate94_eq : InitE.WordFrontendComputation.compileEntry Loop.output94 =
    InitE.WordStages.source158 := by
  kernel_rfl
#print axioms translate94_eq
end InitE.FrontendStages.Word
