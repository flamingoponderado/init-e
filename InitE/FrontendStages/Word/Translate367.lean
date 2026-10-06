import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data367
import InitE.WordStages.Source431
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate351
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate367_eq : InitE.WordFrontendComputation.compileEntry Loop.output367 =
    InitE.WordStages.source431 := by
  kernel_rfl
#print axioms translate367_eq
end InitE.FrontendStages.Word
