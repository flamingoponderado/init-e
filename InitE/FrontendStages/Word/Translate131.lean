import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data131
import InitE.WordStages.Source195
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate115
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate131_eq : InitE.WordFrontendComputation.compileEntry Loop.output131 =
    InitE.WordStages.source195 := by
  kernel_rfl
#print axioms translate131_eq
end InitE.FrontendStages.Word
