import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data46
import InitE.WordStages.Source110
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate30
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate46_eq : InitE.WordFrontendComputation.compileEntry Loop.output46 =
    InitE.WordStages.source110 := by
  kernel_rfl
#print axioms translate46_eq
end InitE.FrontendStages.Word
