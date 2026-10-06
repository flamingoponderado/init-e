import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data437
import InitE.WordStages.Source501
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate421
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate437_eq : InitE.WordFrontendComputation.compileEntry Loop.output437 =
    InitE.WordStages.source501 := by
  kernel_rfl
#print axioms translate437_eq
end InitE.FrontendStages.Word
