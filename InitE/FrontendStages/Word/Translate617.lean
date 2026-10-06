import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data617
import InitE.WordStages.Source681
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate601
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate617_eq : InitE.WordFrontendComputation.compileEntry Loop.output617 =
    InitE.WordStages.source681 := by
  kernel_rfl
#print axioms translate617_eq
end InitE.FrontendStages.Word
