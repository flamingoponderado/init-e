import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data702
import InitE.WordStages.Source766
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate686
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate702_eq : InitE.WordFrontendComputation.compileEntry Loop.output702 =
    InitE.WordStages.source766 := by
  kernel_rfl
#print axioms translate702_eq
end InitE.FrontendStages.Word
