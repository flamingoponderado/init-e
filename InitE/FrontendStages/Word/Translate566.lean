import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data566
import InitE.WordStages.Source630
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate550
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate566_eq : InitE.WordFrontendComputation.compileEntry Loop.output566 =
    InitE.WordStages.source630 := by
  kernel_rfl
#print axioms translate566_eq
end InitE.FrontendStages.Word
