import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data333
import InitE.WordStages.Source397
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate317
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate333_eq : InitE.WordFrontendComputation.compileEntry Loop.output333 =
    InitE.WordStages.source397 := by
  kernel_rfl
#print axioms translate333_eq
end InitE.FrontendStages.Word
