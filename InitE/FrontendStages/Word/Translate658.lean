import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data658
import InitE.WordStages.Source722
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate642
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate658_eq : InitE.WordFrontendComputation.compileEntry Loop.output658 =
    InitE.WordStages.source722 := by
  kernel_rfl
#print axioms translate658_eq
end InitE.FrontendStages.Word
