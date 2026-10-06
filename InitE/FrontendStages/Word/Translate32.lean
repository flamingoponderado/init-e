import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data32
import InitE.WordStages.Source96
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate16
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate32_eq : InitE.WordFrontendComputation.compileEntry Loop.output32 =
    InitE.WordStages.source96 := by
  kernel_rfl
#print axioms translate32_eq
end InitE.FrontendStages.Word
