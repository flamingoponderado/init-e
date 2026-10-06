import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data124
import InitE.WordStages.Source188
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate108
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate124_eq : InitE.WordFrontendComputation.compileEntry Loop.output124 =
    InitE.WordStages.source188 := by
  kernel_rfl
#print axioms translate124_eq
end InitE.FrontendStages.Word
