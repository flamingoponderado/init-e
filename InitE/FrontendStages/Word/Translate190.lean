import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data190
import InitE.WordStages.Source254
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate174
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate190_eq : InitE.WordFrontendComputation.compileEntry Loop.output190 =
    InitE.WordStages.source254 := by
  kernel_rfl
#print axioms translate190_eq
end InitE.FrontendStages.Word
