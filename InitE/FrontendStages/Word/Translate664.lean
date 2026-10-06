import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data664
import InitE.WordStages.Source728
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate648
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate664_eq : InitE.WordFrontendComputation.compileEntry Loop.output664 =
    InitE.WordStages.source728 := by
  kernel_rfl
#print axioms translate664_eq
end InitE.FrontendStages.Word
