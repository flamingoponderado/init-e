import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data705
import InitE.WordStages.Source769
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate689
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate705_eq : InitE.WordFrontendComputation.compileEntry Loop.output705 =
    InitE.WordStages.source769 := by
  kernel_rfl
#print axioms translate705_eq
end InitE.FrontendStages.Word
