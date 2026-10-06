import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data418
import InitE.WordStages.Source482
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate402
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate418_eq : InitE.WordFrontendComputation.compileEntry Loop.output418 =
    InitE.WordStages.source482 := by
  kernel_rfl
#print axioms translate418_eq
end InitE.FrontendStages.Word
