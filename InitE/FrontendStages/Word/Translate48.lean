import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data48
import InitE.WordStages.Source112
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate32
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate48_eq : InitE.WordFrontendComputation.compileEntry Loop.output48 =
    InitE.WordStages.source112 := by
  kernel_rfl
#print axioms translate48_eq
end InitE.FrontendStages.Word
