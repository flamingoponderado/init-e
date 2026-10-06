import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data453
import InitE.WordStages.Source517
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate437
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate453_eq : InitE.WordFrontendComputation.compileEntry Loop.output453 =
    InitE.WordStages.source517 := by
  kernel_rfl
#print axioms translate453_eq
end InitE.FrontendStages.Word
