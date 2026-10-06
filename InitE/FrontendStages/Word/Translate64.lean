import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data64
import InitE.WordStages.Source128
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate48
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate64_eq : InitE.WordFrontendComputation.compileEntry Loop.output64 =
    InitE.WordStages.source128 := by
  kernel_rfl
#print axioms translate64_eq
end InitE.FrontendStages.Word
