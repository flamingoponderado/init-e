import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data221
import InitE.WordStages.Source285
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate205
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate221_eq : InitE.WordFrontendComputation.compileEntry Loop.output221 =
    InitE.WordStages.source285 := by
  kernel_rfl
#print axioms translate221_eq
end InitE.FrontendStages.Word
