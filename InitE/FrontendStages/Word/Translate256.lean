import InitE.CompactComputation
import InitE.FrontendStages.Loop.Data256
import InitE.WordStages.Source320
import InitE.WordFrontendComputation
import InitE.FrontendStages.Word.Translate240
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitE.FrontendStages.Word
theorem translate256_eq : InitE.WordFrontendComputation.compileEntry Loop.output256 =
    InitE.WordStages.source320 := by
  kernel_rfl
#print axioms translate256_eq
end InitE.FrontendStages.Word
