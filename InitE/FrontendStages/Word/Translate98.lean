import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data98
import InitE.WordStages.Source162
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate82
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate98_eq : InitE.WordFrontendComputation.compileEntry Loop.output98 =
    InitE.WordStages.source162 := by
  kernel_rfl
#print axioms translate98_eq
end InitE.FrontendStages.Word
