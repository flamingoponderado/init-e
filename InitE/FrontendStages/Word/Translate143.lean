import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data143
import InitE.WordStages.Source207
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate127
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate143_eq : InitE.WordFrontendComputation.compileEntry Loop.output143 =
    InitE.WordStages.source207 := by
  kernel_rfl
#print axioms translate143_eq
end InitE.FrontendStages.Word
