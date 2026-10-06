import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data560
import InitE.WordStages.Source624
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate544
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate560_eq : InitE.WordFrontendComputation.compileEntry Loop.output560 =
    InitE.WordStages.source624 := by
  kernel_rfl
#print axioms translate560_eq
end InitE.FrontendStages.Word
