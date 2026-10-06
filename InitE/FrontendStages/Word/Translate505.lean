import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data505
import InitE.WordStages.Source569
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate489
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate505_eq : InitE.WordFrontendComputation.compileEntry Loop.output505 =
    InitE.WordStages.source569 := by
  kernel_rfl
#print axioms translate505_eq
end InitE.FrontendStages.Word
