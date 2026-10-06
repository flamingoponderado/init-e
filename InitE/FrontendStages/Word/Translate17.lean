import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data17
import InitE.WordStages.Source81
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate1
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate17_eq : InitE.WordFrontendComputation.compileEntry Loop.output17 =
    InitE.WordStages.source81 := by
  kernel_rfl
#print axioms translate17_eq
end InitE.FrontendStages.Word
