import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data823
import InitE.WordStages.Source887
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate807
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate823_eq : InitE.WordFrontendComputation.compileEntry Loop.output823 =
    InitE.WordStages.source887 := by
  kernel_rfl
#print axioms translate823_eq
end InitE.FrontendStages.Word
