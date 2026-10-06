import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data469
import InitE.WordStages.Source533
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate453
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate469_eq : InitE.WordFrontendComputation.compileEntry Loop.output469 =
    InitE.WordStages.source533 := by
  kernel_rfl
#print axioms translate469_eq
end InitE.FrontendStages.Word
