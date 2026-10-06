import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data286
import InitE.WordStages.Source350
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate270
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate286_eq : InitE.WordFrontendComputation.compileEntry Loop.output286 =
    InitE.WordStages.source350 := by
  kernel_rfl
#print axioms translate286_eq
end InitE.FrontendStages.Word
