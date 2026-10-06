import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data671
import InitE.WordStages.Source735
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate655
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate671_eq : InitE.WordFrontendComputation.compileEntry Loop.output671 =
    InitE.WordStages.source735 := by
  kernel_rfl
#print axioms translate671_eq
end InitE.FrontendStages.Word
