import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data25
import InitE.WordStages.Source89
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate9
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate25_eq : InitE.WordFrontendComputation.compileEntry Loop.output25 =
    InitE.WordStages.source89 := by
  kernel_rfl
#print axioms translate25_eq
end InitE.FrontendStages.Word
