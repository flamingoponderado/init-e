import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data720
import InitE.WordStages.Source784
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate704
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate720_eq : InitE.WordFrontendComputation.compileEntry Loop.output720 =
    InitE.WordStages.source784 := by
  kernel_rfl
#print axioms translate720_eq
end InitE.FrontendStages.Word
