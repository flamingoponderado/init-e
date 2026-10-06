import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data109
import InitE.WordStages.Source173
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate93
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate109_eq : InitE.WordFrontendComputation.compileEntry Loop.output109 =
    InitE.WordStages.source173 := by
  kernel_rfl
#print axioms translate109_eq
end InitE.FrontendStages.Word
