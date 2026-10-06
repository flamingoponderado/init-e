import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data591
import InitE.WordStages.Source655
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate575
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate591_eq : InitE.WordFrontendComputation.compileEntry Loop.output591 =
    InitE.WordStages.source655 := by
  kernel_rfl
#print axioms translate591_eq
end InitE.FrontendStages.Word
