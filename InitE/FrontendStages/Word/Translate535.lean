import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data535
import InitE.WordStages.Source599
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate519
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate535_eq : InitE.WordFrontendComputation.compileEntry Loop.output535 =
    InitE.WordStages.source599 := by
  kernel_rfl
#print axioms translate535_eq
end InitE.FrontendStages.Word
