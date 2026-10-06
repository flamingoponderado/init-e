import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data372
import InitE.WordStages.Source436
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate356
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate372_eq : InitE.WordFrontendComputation.compileEntry Loop.output372 =
    InitE.WordStages.source436 := by
  kernel_rfl
#print axioms translate372_eq
end InitE.FrontendStages.Word
