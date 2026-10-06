import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data821
import InitE.WordStages.Source885
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate805
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate821_eq : InitE.WordFrontendComputation.compileEntry Loop.output821 =
    InitE.WordStages.source885 := by
  kernel_rfl
#print axioms translate821_eq
end InitE.FrontendStages.Word
