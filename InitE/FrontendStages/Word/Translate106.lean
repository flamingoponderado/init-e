import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data106
import InitE.WordStages.Source170
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate90
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate106_eq : InitE.WordFrontendComputation.compileEntry Loop.output106 =
    InitE.WordStages.source170 := by
  kernel_rfl
#print axioms translate106_eq
end InitE.FrontendStages.Word
