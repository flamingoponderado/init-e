import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data332
import InitE.WordStages.Source396
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate316
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate332_eq : InitE.WordFrontendComputation.compileEntry Loop.output332 =
    InitE.WordStages.source396 := by
  kernel_rfl
#print axioms translate332_eq
end InitE.FrontendStages.Word
