import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data731
import InitE.WordStages.Source795
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate715
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate731_eq : InitE.WordFrontendComputation.compileEntry Loop.output731 =
    InitE.WordStages.source795 := by
  kernel_rfl
#print axioms translate731_eq
end InitE.FrontendStages.Word
