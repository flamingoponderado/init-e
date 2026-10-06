import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data119
import InitE.WordStages.Source183
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate103
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate119_eq : InitE.WordFrontendComputation.compileEntry Loop.output119 =
    InitE.WordStages.source183 := by
  kernel_rfl
#print axioms translate119_eq
end InitE.FrontendStages.Word
