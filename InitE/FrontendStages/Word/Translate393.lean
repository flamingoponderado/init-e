import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data393
import InitE.WordStages.Source457
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate393_eq : InitE.WordFrontendComputation.compileEntry Loop.output393 =
    InitE.WordStages.source457 := by
  kernel_rfl
#print axioms translate393_eq
end InitE.FrontendStages.Word
