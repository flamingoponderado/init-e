import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data29
import InitE.WordStages.Source93
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate13
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate29_eq : InitE.WordFrontendComputation.compileEntry Loop.output29 =
    InitE.WordStages.source93 := by
  kernel_rfl
#print axioms translate29_eq
end InitE.FrontendStages.Word
