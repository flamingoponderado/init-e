import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data788
import InitE.WordStages.Source852
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate772
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate788_eq : InitE.WordFrontendComputation.compileEntry Loop.output788 =
    InitE.WordStages.source852 := by
  kernel_rfl
#print axioms translate788_eq
end InitE.FrontendStages.Word
