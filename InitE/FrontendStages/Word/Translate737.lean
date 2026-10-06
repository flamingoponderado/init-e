import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data737
import InitE.WordStages.Source801
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate721
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate737_eq : InitE.WordFrontendComputation.compileEntry Loop.output737 =
    InitE.WordStages.source801 := by
  kernel_rfl
#print axioms translate737_eq
end InitE.FrontendStages.Word
