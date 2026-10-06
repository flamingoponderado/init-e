import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data803
import InitE.WordStages.Source867
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate787
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate803_eq : InitE.WordFrontendComputation.compileEntry Loop.output803 =
    InitE.WordStages.source867 := by
  kernel_rfl
#print axioms translate803_eq
end InitE.FrontendStages.Word
