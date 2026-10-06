import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data462
import InitE.WordStages.Source526
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate446
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate462_eq : InitE.WordFrontendComputation.compileEntry Loop.output462 =
    InitE.WordStages.source526 := by
  kernel_rfl
#print axioms translate462_eq
end InitE.FrontendStages.Word
