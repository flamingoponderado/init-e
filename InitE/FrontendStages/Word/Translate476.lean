import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data476
import InitE.WordStages.Source540
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate460
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate476_eq : InitE.WordFrontendComputation.compileEntry Loop.output476 =
    InitE.WordStages.source540 := by
  kernel_rfl
#print axioms translate476_eq
end InitE.FrontendStages.Word
