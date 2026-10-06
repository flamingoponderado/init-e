import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data27
import InitE.WordStages.Source91
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate11
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate27_eq : InitE.WordFrontendComputation.compileEntry Loop.output27 =
    InitE.WordStages.source91 := by
  kernel_rfl
#print axioms translate27_eq
end InitE.FrontendStages.Word
