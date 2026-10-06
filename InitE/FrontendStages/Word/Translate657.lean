import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data657
import InitE.WordStages.Source721
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate641
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate657_eq : InitE.WordFrontendComputation.compileEntry Loop.output657 =
    InitE.WordStages.source721 := by
  kernel_rfl
#print axioms translate657_eq
end InitE.FrontendStages.Word
