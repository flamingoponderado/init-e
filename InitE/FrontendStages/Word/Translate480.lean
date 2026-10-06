import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data480
import InitE.WordStages.Source544
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate464
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate480_eq : InitE.WordFrontendComputation.compileEntry Loop.output480 =
    InitE.WordStages.source544 := by
  kernel_rfl
#print axioms translate480_eq
end InitE.FrontendStages.Word
