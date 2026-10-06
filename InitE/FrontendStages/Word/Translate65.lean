import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data65
import InitE.WordStages.Source129
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate49
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate65_eq : InitE.WordFrontendComputation.compileEntry Loop.output65 =
    InitE.WordStages.source129 := by
  kernel_rfl
#print axioms translate65_eq
end InitE.FrontendStages.Word
