import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data76
import InitE.WordStages.Source140
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate60
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate76_eq : InitE.WordFrontendComputation.compileEntry Loop.output76 =
    InitE.WordStages.source140 := by
  kernel_rfl
#print axioms translate76_eq
end InitE.FrontendStages.Word
