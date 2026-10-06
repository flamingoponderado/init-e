import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data701
import InitE.WordStages.Source765
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate685
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate701_eq : InitE.WordFrontendComputation.compileEntry Loop.output701 =
    InitE.WordStages.source765 := by
  kernel_rfl
#print axioms translate701_eq
end InitE.FrontendStages.Word
