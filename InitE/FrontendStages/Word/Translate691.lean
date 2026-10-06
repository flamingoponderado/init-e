import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data691
import InitE.WordStages.Source755
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate675
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate691_eq : InitE.WordFrontendComputation.compileEntry Loop.output691 =
    InitE.WordStages.source755 := by
  kernel_rfl
#print axioms translate691_eq
end InitE.FrontendStages.Word
