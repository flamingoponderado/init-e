import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data35
import InitE.WordStages.Source99
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate19
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate35_eq : InitE.WordFrontendComputation.compileEntry Loop.output35 =
    InitE.WordStages.source99 := by
  kernel_rfl
#print axioms translate35_eq
end InitE.FrontendStages.Word
