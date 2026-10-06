import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data408
import InitE.WordStages.Source472
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate392
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate408_eq : InitE.WordFrontendComputation.compileEntry Loop.output408 =
    InitE.WordStages.source472 := by
  kernel_rfl
#print axioms translate408_eq
end InitE.FrontendStages.Word
