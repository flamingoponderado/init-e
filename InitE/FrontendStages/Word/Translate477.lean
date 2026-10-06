import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data477
import InitE.WordStages.Source541
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate461
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate477_eq : InitE.WordFrontendComputation.compileEntry Loop.output477 =
    InitE.WordStages.source541 := by
  kernel_rfl
#print axioms translate477_eq
end InitE.FrontendStages.Word
