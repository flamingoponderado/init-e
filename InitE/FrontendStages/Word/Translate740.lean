import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data740
import InitE.WordStages.Source804
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate724
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate740_eq : InitE.WordFrontendComputation.compileEntry Loop.output740 =
    InitE.WordStages.source804 := by
  kernel_rfl
#print axioms translate740_eq
end InitE.FrontendStages.Word
