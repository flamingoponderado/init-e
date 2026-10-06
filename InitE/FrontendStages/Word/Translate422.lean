import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data422
import InitE.WordStages.Source486
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate406
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate422_eq : InitE.WordFrontendComputation.compileEntry Loop.output422 =
    InitE.WordStages.source486 := by
  kernel_rfl
#print axioms translate422_eq
end InitE.FrontendStages.Word
