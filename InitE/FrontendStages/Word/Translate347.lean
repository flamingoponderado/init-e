import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data347
import InitE.WordStages.Source411
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate331
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate347_eq : InitE.WordFrontendComputation.compileEntry Loop.output347 =
    InitE.WordStages.source411 := by
  kernel_rfl
#print axioms translate347_eq
end InitE.FrontendStages.Word
