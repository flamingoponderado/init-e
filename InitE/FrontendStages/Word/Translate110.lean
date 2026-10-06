import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data110
import InitE.WordStages.Source174
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate94
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate110_eq : InitE.WordFrontendComputation.compileEntry Loop.output110 =
    InitE.WordStages.source174 := by
  kernel_rfl
#print axioms translate110_eq
end InitE.FrontendStages.Word
