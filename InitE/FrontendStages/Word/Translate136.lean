import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data136
import InitE.WordStages.Source200
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate120
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate136_eq : InitE.WordFrontendComputation.compileEntry Loop.output136 =
    InitE.WordStages.source200 := by
  kernel_rfl
#print axioms translate136_eq
end InitE.FrontendStages.Word
