import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data800
import InitE.WordStages.Source864
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate784
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate800_eq : InitE.WordFrontendComputation.compileEntry Loop.output800 =
    InitE.WordStages.source864 := by
  kernel_rfl
#print axioms translate800_eq
end InitE.FrontendStages.Word
