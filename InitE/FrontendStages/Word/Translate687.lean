import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data687
import InitE.WordStages.Source751
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate671
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate687_eq : InitE.WordFrontendComputation.compileEntry Loop.output687 =
    InitE.WordStages.source751 := by
  kernel_rfl
#print axioms translate687_eq
end InitE.FrontendStages.Word
