import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data807
import InitE.WordStages.Source871
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate791
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate807_eq : InitE.WordFrontendComputation.compileEntry Loop.output807 =
    InitE.WordStages.source871 := by
  kernel_rfl
#print axioms translate807_eq
end InitE.FrontendStages.Word
