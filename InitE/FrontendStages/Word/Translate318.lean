import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data318
import InitE.WordStages.Source382
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate302
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate318_eq : InitE.WordFrontendComputation.compileEntry Loop.output318 =
    InitE.WordStages.source382 := by
  kernel_rfl
#print axioms translate318_eq
end InitE.FrontendStages.Word
