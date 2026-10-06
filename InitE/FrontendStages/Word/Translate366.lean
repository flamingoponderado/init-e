import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data366
import InitE.WordStages.Source430
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate350
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate366_eq : InitE.WordFrontendComputation.compileEntry Loop.output366 =
    InitE.WordStages.source430 := by
  kernel_rfl
#print axioms translate366_eq
end InitE.FrontendStages.Word
