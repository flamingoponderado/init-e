import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data633
import InitE.WordStages.Source697
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate617
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate633_eq : InitE.WordFrontendComputation.compileEntry Loop.output633 =
    InitE.WordStages.source697 := by
  kernel_rfl
#print axioms translate633_eq
end InitE.FrontendStages.Word
