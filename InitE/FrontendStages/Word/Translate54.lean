import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data54
import InitE.WordStages.Source118
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate38
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate54_eq : InitE.WordFrontendComputation.compileEntry Loop.output54 =
    InitE.WordStages.source118 := by
  kernel_rfl
#print axioms translate54_eq
end InitE.FrontendStages.Word
