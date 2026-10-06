import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data514
import InitE.WordStages.Source578
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate498
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate514_eq : InitE.WordFrontendComputation.compileEntry Loop.output514 =
    InitE.WordStages.source578 := by
  kernel_rfl
#print axioms translate514_eq
end InitE.FrontendStages.Word
