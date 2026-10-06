import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data478
import InitE.WordStages.Source542
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate462
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate478_eq : InitE.WordFrontendComputation.compileEntry Loop.output478 =
    InitE.WordStages.source542 := by
  kernel_rfl
#print axioms translate478_eq
end InitE.FrontendStages.Word
